<?php

namespace App\MyLibs;

use DateTime;
use DateInterval;

class Utils {
    
    public static function calculateNewDate($bidding)
    {
        if (!isset($bidding->lastDocument)) {
            $newDate = '---';
        } else {
            $created_at = $bidding->lastDocument->created_at;
            $deadline = $bidding->lastDocument->deadline;

            if ($deadline === null) {
                $newDate = '---';
            } else {
                $deadlineInDays = $deadline;
                $newDateTime = new DateTime($created_at);
                $newDateTime->add(new DateInterval("P{$deadlineInDays}D"));
                $newDate = $newDateTime->format('Y-m-d H:i:s');
            }
        }

        return $newDate;
    }

    public static function calculateInterval($deadline)
    {
        $targetDateTime = DateTime::createFromFormat('Y-m-d H:i:s', $deadline);

        if ($targetDateTime === false || $targetDateTime->format('Y-m-d H:i:s') !== $deadline) {
            return '---';
        }

        $currentDateTime = new DateTime();
        $interval = $currentDateTime->diff($targetDateTime);
        $remainingDays = $interval->format('%r%a');

        if ($remainingDays > 0) {
            $remainingDays = ltrim($remainingDays, '+');
        }

        return $remainingDays;
    }

    public static function hasPendingSignature($bidding)
    {
        if ($bidding->documents->isNotEmpty()) {
            foreach ($bidding->documents as $document) {
                if ($document->signatures->isNotEmpty()) {
                    foreach ($document->signatures as $signature) {
                        if ($signature->signature_status_id == 1) {
                            return true;
                        }
                    }
                }
            }
        }

        return false;
    }

    public static function hasPendingSignatureForDocument($document)
{
        
        if ($document->signatures->isNotEmpty()) {
            foreach ($document->signatures as $signature) {
                if ($signature->signature_status_id == 1) {
                    return true;
                }
            }
        }

    return false;
}

}