package com.onepeloton.affernetservice;

import com.onepeloton.affernetservice.SmartcardLogData;
import com.onepeloton.affernetservice.TreadData;

// Declare parcelable types used in the interface
parcelable SmartcardLogData;
parcelable TreadData;

interface ITreadCallback {
    /**
     * Called when calibration status changes.
     * @param status The status code.
     * @param success Whether the operation succeeded.
     * @param timestamp The timestamp of the event.
     */
    void onCalibrationStatus(int status, boolean success, long timestamp);

    /**
     * Called when log data changes.
     * @param logData The updated log data.
     */
    void onLogDataChange(SmartcardLogData logData);

    /**
     * Called when OTA MCB update status changes.
     * @param status The status code.
     * @param success Whether the operation succeeded.
     * @param timestamp The timestamp of the event.
     */
    void onOTAMCBUpdateStatus(int status, boolean success, long timestamp);

    /**
     * Called when OTA SC update status changes.
     * @param status The status code.
     * @param success Whether the operation succeeded.
     * @param timestamp The timestamp of the event.
     */
    void onOTASCUpdateStatus(int status, boolean success, long timestamp);

    /**
     * Called when OTA update status changes.
     * @param status The status code.
     * @param success Whether the operation succeeded.
     * @param timestamp The timestamp of the event.
     */
    void onOTAUpdateStatus(int status, boolean success, long timestamp);

    /**
     * Called when sensor data changes.
     * @param data The updated sensor data.
     */
    void onSensorDataChange(TreadData data);

    /**
     * Called when a sensor error occurs.
     * @param timestamp The timestamp of the error.
     */
    void onSensorError(long timestamp);

    /**
     * Called when the tread is locked.
     * @param locked Whether the tread is locked.
     * @param reasonCode The reason code for the lock.
     */
    void onTreadLocked(boolean locked, int reasonCode);
}
