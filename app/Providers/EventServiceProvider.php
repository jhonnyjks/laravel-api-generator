<?php

namespace App\Providers;

use App\Observers\BaseModelObserver;
use Illuminate\Support\Facades\Event;
use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        parent::boot();

        $modelsPath = app_path('Models');
        if (is_dir($modelsPath)) {
            $modelFiles = File::allFiles($modelsPath);

            foreach ($modelFiles as $file) {
                $fileName = Str::replaceLast('.php', '', $file->getFilename());
                if(!in_array($fileName,['Audit'])){
                    $namespace = 'App\\Models\\' . $fileName;
                    if (class_exists($namespace) && is_subclass_of($namespace, 'Illuminate\Database\Eloquent\Model')) {
                        $namespace::observe(BaseModelObserver::class);
                    }
                }
            }
            
        }

    }
}
