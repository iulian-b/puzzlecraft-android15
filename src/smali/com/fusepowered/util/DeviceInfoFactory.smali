.class public Lcom/fusepowered/util/DeviceInfoFactory;
.super Ljava/lang/Object;
.source "DeviceInfoFactory.java"


# static fields
.field protected static final PREFS_DEVICE_ID:Ljava/lang/String; = "device_id"

.field protected static final PREFS_FILE:Ljava/lang/String; = "device_id.xml"

.field private static final TAG:Ljava/lang/String; = "DeviceInfoFactory"

.field protected static countryCode:Ljava/lang/String;

.field protected static deviceId:Ljava/lang/String;

.field protected static deviceName:Ljava/lang/String;

.field protected static deviceSoftwareVersion:Ljava/lang/String;

.field protected static fingerprint:Ljava/lang/String;

.field protected static hardware:Ljava/lang/String;

.field protected static language:Ljava/lang/String;

.field protected static macAddress:Ljava/lang/String;

.field protected static manufacturer:Ljava/lang/String;

.field protected static model:Ljava/lang/String;

.field protected static networkCountryIso:Ljava/lang/String;

.field protected static networkOperator:Ljava/lang/String;

.field protected static networkOperatorName:Ljava/lang/String;

.field protected static networkType:Ljava/lang/String;

.field protected static packageName:Ljava/lang/String;

.field protected static phoneType:Ljava/lang/String;

.field protected static product:Ljava/lang/String;

.field protected static simCountryIso:Ljava/lang/String;

.field protected static simOperator:Ljava/lang/String;

.field protected static simOperatorName:Ljava/lang/String;

.field protected static user:Ljava/lang/String;

.field protected static uuid:Ljava/util/UUID;


# instance fields
.field ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/fusepowered/util/DeviceInfoFactory;->ctx:Landroid/content/Context;

    .line 86
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->countryCode:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->countryCode:Ljava/lang/String;

    .line 89
    :cond_0
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->language:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->language:Ljava/lang/String;

    .line 92
    :cond_1
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->packageName:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->packageName:Ljava/lang/String;

    .line 95
    :cond_2
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->deviceName:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 96
    sget-object v7, Landroid/os/Build;->USER:Ljava/lang/String;

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->deviceName:Ljava/lang/String;

    .line 99
    :cond_3
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->user:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 100
    sget-object v7, Landroid/os/Build;->USER:Ljava/lang/String;

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->user:Ljava/lang/String;

    .line 102
    :cond_4
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->manufacturer:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 103
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->manufacturer:Ljava/lang/String;

    .line 108
    :cond_5
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->hardware:Ljava/lang/String;

    if-nez v7, :cond_6

    .line 109
    sget-object v7, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->hardware:Ljava/lang/String;

    .line 111
    :cond_6
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->fingerprint:Ljava/lang/String;

    if-nez v7, :cond_7

    .line 112
    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->fingerprint:Ljava/lang/String;

    .line 114
    :cond_7
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->model:Ljava/lang/String;

    if-nez v7, :cond_8

    .line 115
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->model:Ljava/lang/String;

    .line 117
    :cond_8
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->product:Ljava/lang/String;

    if-nez v7, :cond_9

    .line 118
    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->product:Ljava/lang/String;

    .line 120
    :cond_9
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 124
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->deviceSoftwareVersion:Ljava/lang/String;

    if-nez v7, :cond_a

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->deviceSoftwareVersion:Ljava/lang/String;

    .line 126
    :cond_a
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->networkCountryIso:Ljava/lang/String;

    if-nez v7, :cond_b

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->networkCountryIso:Ljava/lang/String;

    .line 128
    :cond_b
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->networkOperator:Ljava/lang/String;

    if-nez v7, :cond_c

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->networkOperator:Ljava/lang/String;

    .line 130
    :cond_c
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->networkOperatorName:Ljava/lang/String;

    if-nez v7, :cond_d

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->networkOperatorName:Ljava/lang/String;

    .line 136
    :cond_d
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->simOperatorName:Ljava/lang/String;

    if-nez v7, :cond_e

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->simOperatorName:Ljava/lang/String;

    .line 138
    :cond_e
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->simOperator:Ljava/lang/String;

    if-nez v7, :cond_f

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->simOperator:Ljava/lang/String;

    .line 140
    :cond_f
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->simCountryIso:Ljava/lang/String;

    if-nez v7, :cond_10

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->simCountryIso:Ljava/lang/String;

    .line 142
    :cond_10
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->phoneType:Ljava/lang/String;

    if-nez v7, :cond_11

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->phoneType:Ljava/lang/String;

    .line 144
    :cond_11
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->networkType:Ljava/lang/String;

    if-nez v7, :cond_12

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->networkType:Ljava/lang/String;

    .line 146
    :cond_12
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->macAddress:Ljava/lang/String;

    if-nez v7, :cond_13

    .line 148
    :try_start_0
    iget-object v7, p0, Lcom/fusepowered/util/DeviceInfoFactory;->ctx:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 149
    .local v6, "wimanager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->macAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    .end local v6    # "wimanager":Landroid/net/wifi/WifiManager;
    :cond_13
    :goto_0
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->uuid:Ljava/util/UUID;

    if-nez v7, :cond_15

    .line 160
    const-class v8, Lcom/fusepowered/util/DeviceInfoFactory;

    monitor-enter v8

    .line 161
    :try_start_1
    sget-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->uuid:Ljava/util/UUID;

    if-nez v7, :cond_14

    .line 162
    const-string v7, "device_id.xml"

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 163
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "device_id"

    const/4 v9, 0x0

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_16

    .line 167
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->uuid:Ljava/util/UUID;

    .line 194
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_14
    :goto_1
    monitor-exit v8

    .line 199
    :cond_15
    return-void

    .line 172
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "android_id"

    invoke-static {v7, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 178
    .local v0, "androidId":Ljava/lang/String;
    :try_start_2
    const-string v7, "9774d56d682e549c"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 179
    const-string v7, "utf8"

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v7

    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->uuid:Ljava/util/UUID;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :goto_2
    :try_start_3
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "device_id"

    sget-object v10, Lcom/fusepowered/util/DeviceInfoFactory;->uuid:Ljava/util/UUID;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 194
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 181
    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_17
    :try_start_4
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "deviceId":Ljava/lang/String;
    if-eqz v1, :cond_18

    const-string v7, "utf8"

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v7

    :goto_3
    sput-object v7, Lcom/fusepowered/util/DeviceInfoFactory;->uuid:Ljava/util/UUID;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 184
    .end local v1    # "deviceId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_5
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "deviceId":Ljava/lang/String;
    :cond_18
    :try_start_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    goto :goto_3

    .line 151
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->packageName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->deviceSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->hardware:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->networkCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->networkOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->networkOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->phoneType:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefsDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const-string v0, "device_id"

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->simCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->simOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->simOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/fusepowered/util/DeviceInfoFactory;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeviceInfoFactory{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deviceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deviceSoftwareVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->deviceSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " manufacturer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->manufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hardware:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->hardware:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fingerprint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->fingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " model:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " product:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->product:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkCountryIso:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->networkCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkOperator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->networkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkOperatorName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simOperator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->simOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simOperatorName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->simOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simCountryIso:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->simCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->phoneType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->networkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " language:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " countryCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " macAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/DeviceInfoFactory;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
