.class public Lcom/fusepowered/nx/common/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field private static device:Lcom/fusepowered/nx/common/Device;

.field private static deviceId:Ljava/lang/String;

.field private static deviceManager:Lcom/fusepowered/nx/common/DeviceManager;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/common/DeviceManager;->deviceId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/fusepowered/nx/common/DeviceManager;->context:Landroid/content/Context;

    .line 45
    sput-object p0, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    .line 46
    return-void
.end method

.method private getAndroidDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 148
    .local v0, "deviceId":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/nx/common/DeviceManager;->context:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    if-eqz v0, :cond_0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found an AndroidDeviceId (IMEI): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 157
    :goto_1
    return-object v0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No permissions to get device id, continuing... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "Could not retrieve an AndroidDeviceId (IMEI)"

    invoke-static {v2}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getAndroidId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/common/DeviceManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceManager: Unexpected exception caught in getAndroidId()"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    :try_start_0
    sget-object v1, Lcom/fusepowered/nx/common/DeviceManager;->deviceId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 186
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fusepowered/nx/common/DeviceManager;->deviceId:Ljava/lang/String;

    .line 188
    :cond_0
    sget-object v1, Lcom/fusepowered/nx/common/DeviceManager;->deviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-object v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceManager: Unexpected exception caught in getDeviceId()"

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getDeviceInstance(Landroid/content/Context;)Lcom/fusepowered/nx/common/Device;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const-class v1, Lcom/fusepowered/nx/common/DeviceManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 57
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    if-nez v0, :cond_3

    .line 58
    new-instance v0, Lcom/fusepowered/nx/common/DeviceManager;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/common/DeviceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    .line 65
    :cond_1
    :goto_0
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    if-nez v0, :cond_4

    .line 66
    new-instance v0, Lcom/fusepowered/nx/common/Device;

    invoke-direct {v0}, Lcom/fusepowered/nx/common/Device;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    .line 67
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    sget-object v2, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    invoke-direct {v2}, Lcom/fusepowered/nx/common/DeviceManager;->getAndroidDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/nx/common/Device;->setAndroidDeviceID(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    sget-object v2, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    invoke-direct {v2}, Lcom/fusepowered/nx/common/DeviceManager;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/nx/common/Device;->setAndroidID(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    sget-object v2, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    invoke-direct {v2}, Lcom/fusepowered/nx/common/DeviceManager;->isHacked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/nx/common/Device;->setHacked(Z)V

    .line 70
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    sget-object v2, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    invoke-direct {v2}, Lcom/fusepowered/nx/common/DeviceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/nx/common/Device;->setDeviceId(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fusepowered/nx/common/Device;->setDeviceName(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    sget-object v2, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    invoke-direct {v2}, Lcom/fusepowered/nx/common/DeviceManager;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/nx/common/Device;->setOsVersion(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/fusepowered/nx/common/Device;->setUsingSdk(Z)V

    .line 79
    :cond_2
    :goto_1
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :cond_3
    :try_start_1
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    iget-object v0, v0, Lcom/fusepowered/nx/common/DeviceManager;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 61
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    iput-object p0, v0, Lcom/fusepowered/nx/common/DeviceManager;->context:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 75
    :cond_4
    :try_start_2
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    invoke-virtual {v0}, Lcom/fusepowered/nx/common/Device;->getAndroidDeviceID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 76
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    sget-object v2, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    invoke-direct {v2}, Lcom/fusepowered/nx/common/DeviceManager;->getAndroidDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fusepowered/nx/common/Device;->setAndroidDeviceID(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getOsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/fusepowered/nx/common/DeviceManager;->verifyVersionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 96
    :goto_0
    return-object v1

    .line 92
    :cond_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/fusepowered/nx/common/DeviceManager;->verifyVersionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 94
    goto :goto_0

    .line 96
    :cond_1
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto :goto_0
.end method

.method private isHacked()Z
    .locals 2

    .prologue
    .line 136
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 137
    .local v0, "buildTags":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    sput-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    .line 201
    sput-object v0, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    .line 202
    sput-object v0, Lcom/fusepowered/nx/common/DeviceManager;->deviceId:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public static resetAndroidDeviceId()V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/common/DeviceManager;->deviceId:Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    sget-object v1, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    invoke-direct {v1}, Lcom/fusepowered/nx/common/DeviceManager;->getAndroidDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/common/Device;->setAndroidDeviceID(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public static resetAndroidId()V
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/common/DeviceManager;->deviceId:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    sget-object v1, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    invoke-direct {v1}, Lcom/fusepowered/nx/common/DeviceManager;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/common/Device;->setAndroidID(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public static updateDeviceId()V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/common/DeviceManager;->deviceId:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/fusepowered/nx/common/DeviceManager;->device:Lcom/fusepowered/nx/common/Device;

    sget-object v1, Lcom/fusepowered/nx/common/DeviceManager;->deviceManager:Lcom/fusepowered/nx/common/DeviceManager;

    invoke-direct {v1}, Lcom/fusepowered/nx/common/DeviceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/common/Device;->setDeviceId(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method private verifyVersionString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "^\\d[\\d+\\.?]+\\d$"

    .line 102
    .local v0, "regEx":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const-string v1, "[^0-9\\.]"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 108
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method
