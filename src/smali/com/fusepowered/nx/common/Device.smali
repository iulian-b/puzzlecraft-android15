.class public Lcom/fusepowered/nx/common/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private androidDeviceID:Ljava/lang/String;

.field private androidID:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private isHacked:Z

.field private macWlan:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private usingSdk:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fusepowered/nx/common/Device;->androidDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/nx/common/Device;->androidID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fusepowered/nx/common/Device;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fusepowered/nx/common/Device;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fusepowered/nx/common/Device;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isHacked()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/fusepowered/nx/common/Device;->isHacked:Z

    return v0
.end method

.method public isHackedAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/fusepowered/nx/common/Device;->isHacked:Z

    if-eqz v0, :cond_0

    const-string v0, "True"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "False"

    goto :goto_0
.end method

.method public isUsingSdk()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/fusepowered/nx/common/Device;->usingSdk:Z

    return v0
.end method

.method public setAndroidDeviceID(Ljava/lang/String;)V
    .locals 0
    .param p1, "androidDeviceID"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fusepowered/nx/common/Device;->androidDeviceID:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setAndroidID(Ljava/lang/String;)V
    .locals 0
    .param p1, "androidID"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/fusepowered/nx/common/Device;->androidID:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fusepowered/nx/common/Device;->deviceId:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/fusepowered/nx/common/Device;->deviceName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setHacked(Z)V
    .locals 0
    .param p1, "isHacked"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/fusepowered/nx/common/Device;->isHacked:Z

    .line 76
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/fusepowered/nx/common/Device;->osVersion:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setUsingSdk(Z)V
    .locals 0
    .param p1, "usingSdk"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/fusepowered/nx/common/Device;->usingSdk:Z

    .line 113
    return-void
.end method
