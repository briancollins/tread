package com.onepeloton.affernetservice;

import android.net.Uri;

// Declare parcelable types
parcelable Uri;

interface ITreadInterface {
    void disablePin();
    void enableLockedScreenSleepTimeout(boolean enabled);
    void enablePersonPresent(int flag);
    void enablePin();
    void enableTread();
    void enterBootloaderMode();
    void exitBootloaderMode();
    int getCenterLedStateAndColor();
    int getCurrentIncline();
    int getCurrentSpeed();
    long getError();
    String getInclineMotorSerial();
    int getLeftButtonState();
    int getLeftEncoderData();
    int getLeftLedStateAndColor();
    int getMaxIncline();
    int getMaxSpeed();
    int getMcb0InclineAdc();
    String getMcbCalibrationData();
    int getMcbCalibrationState();
    String getMcbChassisSerial();
    long getMcbCurrentTime();
    List<Integer> getMcbError();
    String getMcbErrorTime();
    String getMcbFirmwareVersion();
    int getMcbGearRatio();
    String getMcbHWVersion();
    int getMcbId();
    long getMcbPassthroughModeTimeout();
    int getMcbRpm();
    String getMcbSerial();
    int getMcbSpeedUnit();
    int getMcbState();
    long getPacketTime();
    int getPersonPresent();
    int getPersonPresentEnabled();
    int getRightButtonState();
    int getRightEncoderData();
    int getRightLedStateAndColor();
    void getSCLogData();
    int getScActionButtonKeyState();
    int getScEmergencyKeyState();
    List<Integer> getScError();
    long getScErrorTime();
    String getScFirmwareVersion();
    String getScHWVersion();
    int getScMcbSafetyLineState();
    String getScSerialNumber();
    int getScSystemState();
    String getSpeedMotorSerial();
    int getState();
    String getStoredPin();
    int getTargetIncline();
    int getTargetSpeed();
    long getTotalMiles();
    boolean isPinSet();
    boolean isTreadSleeping();
    void lockTread();
    void registerCallback(ITreadCallback callback);
    void resetCalibrationDefaults();
    void resetErrors();
    int setCallbackReportRate(int rate);
    boolean setDisableFakeDataMode();
    boolean setEnableFakeDataMode(int mode);
    void setIncline(int incline);
    void setLedState(int id, int red, int green, int blue);
    void setMcbMotorType(int type);
    void setPersonPresentTimeout(int timeout);
    int setPin(String pin);
    void setPinTimeout(int timeout);
    void setSmartcardSerialNumber(String serial);
    void setSpeed(int speed);
    void startCalibration();
    void startInclineCalibration();
    int startMCBOta(byte[] otaData);
    int startMCBOtaURI(Uri uri);
    int startSCOta(byte[] otaData);
    void startSpeedCalibration();
    int unlockTread(String pin);
    void unregisterCallback(ITreadCallback callback);
}
