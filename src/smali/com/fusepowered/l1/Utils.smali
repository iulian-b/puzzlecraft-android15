.class public Lcom/fusepowered/l1/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static final mDebugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/fusepowered/l1/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/Utils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "numberBytesRead":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v2, "out":Ljava/lang/StringBuilder;
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 94
    .local v0, "bytes":[B
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 95
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static convertDpToPixel(F)I
    .locals 5
    .param p0, "dp"    # F

    .prologue
    .line 51
    sget-object v3, Lcom/fusepowered/l1/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 52
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 53
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    mul-float v1, p0, v3

    .line 54
    .local v1, "px":F
    float-to-int v3, v1

    return v3
.end method

.method public static getLastKnownLocation()Landroid/location/Location;
    .locals 10

    .prologue
    .line 105
    sget-object v5, Lcom/fusepowered/l1/Utils;->mContext:Landroid/content/Context;

    const-string v6, "location"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 106
    .local v2, "locationManager":Landroid/location/LocationManager;
    const/4 v1, 0x0

    .line 108
    .local v1, "gpsLocation":Landroid/location/Location;
    :try_start_0
    const-string v5, "gps"

    invoke-virtual {v2, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 115
    :goto_0
    const/4 v3, 0x0

    .line 117
    .local v3, "networkLocation":Landroid/location/Location;
    :try_start_1
    const-string v5, "network"

    invoke-virtual {v2, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 124
    :goto_1
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    .line 125
    const/4 v4, 0x0

    .line 139
    :goto_2
    return-object v4

    .line 109
    .end local v3    # "networkLocation":Landroid/location/Location;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v5, Lcom/fusepowered/l1/Utils;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Failed to retrieve GPS location: access appears to be disabled."

    sget-object v7, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v5, v6, v7}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/fusepowered/l1/Utils;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Failed to retrieve GPS location: device has no GPS provider."

    sget-object v7, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v5, v6, v7}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "networkLocation":Landroid/location/Location;
    :catch_2
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v5, Lcom/fusepowered/l1/Utils;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Failed to retrieve network location: access appears to be disabled."

    sget-object v7, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v5, v6, v7}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_1

    .line 120
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/fusepowered/l1/Utils;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Failed to retrieve network location: device has no network provider."

    sget-object v7, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v5, v6, v7}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_1

    .line 127
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 128
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 129
    move-object v4, v1

    .local v4, "result":Landroid/location/Location;
    goto :goto_2

    .line 131
    .end local v4    # "result":Landroid/location/Location;
    :cond_1
    move-object v4, v3

    .restart local v4    # "result":Landroid/location/Location;
    goto :goto_2

    .line 133
    .end local v4    # "result":Landroid/location/Location;
    :cond_2
    if-eqz v1, :cond_3

    .line 134
    move-object v4, v1

    .restart local v4    # "result":Landroid/location/Location;
    goto :goto_2

    .line 136
    .end local v4    # "result":Landroid/location/Location;
    :cond_3
    move-object v4, v3

    .restart local v4    # "result":Landroid/location/Location;
    goto :goto_2
.end method

.method static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    sput-object p0, Lcom/fusepowered/l1/Utils;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method public static isDebugMode()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v3, 0x0

    .line 32
    .local v3, "isOnline":Z
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 33
    .local v1, "conMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 34
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    const/4 v3, 0x1

    .line 43
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "conMgr":Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    .line 37
    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v1    # "conMgr":Landroid/net/ConnectivityManager;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 39
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "conMgr":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/fusepowered/l1/Utils;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v4, v5, v6}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 41
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isUnityProject()Z
    .locals 5

    .prologue
    .line 59
    :try_start_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v0, "activity":Landroid/app/Activity;
    const/4 v2, 0x1

    .line 64
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return v2

    .line 61
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    sget-object v2, Lcom/fusepowered/l1/Utils;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v2, v3, v4}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 64
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "logLevel"    # Lcom/fusepowered/l1/LogLevel;

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Debug.LoopMe."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method private static sendBroadcast(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/fusepowered/l1/LogLevel;

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fusepowered.l1.logLevel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tag"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "log"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "logLevel"

    invoke-virtual {p2}, Lcom/fusepowered/l1/LogLevel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    sget-object v1, Lcom/fusepowered/l1/Utils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 83
    return-void
.end method
