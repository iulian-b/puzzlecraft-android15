.class public Lcom/fusepowered/location/LocationService;
.super Ljava/lang/Object;
.source "LocationService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastKnownLocation(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p0}, Lcom/fusepowered/location/LocationService;->getRawLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 72
    .local v0, "location":Landroid/location/Location;
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 74
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 75
    const-string v2, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v2, "lon"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v2, "ha"

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :goto_0
    return-object v1

    .line 79
    :cond_0
    const-string v2, "lat"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v2, "lon"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "ha"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getRawLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v5, "location"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 31
    .local v2, "locationManager":Landroid/location/LocationManager;
    const/4 v1, 0x0

    .line 33
    .local v1, "gpsLocation":Landroid/location/Location;
    :try_start_0
    const-string v5, "gps"

    invoke-virtual {v2, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 42
    :goto_0
    const/4 v3, 0x0

    .line 44
    .local v3, "networkLocation":Landroid/location/Location;
    :try_start_1
    const-string v5, "network"

    invoke-virtual {v2, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v3

    .line 53
    :goto_1
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    .line 54
    const/4 v4, 0x0

    .line 67
    :goto_2
    return-object v4

    .line 34
    .end local v3    # "networkLocation":Landroid/location/Location;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v5, "LocationService"

    const-string v6, "Failed to retrieve GPS location: access appears to be disabled."

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "LocationService"

    const-string v6, "Failed to retrieve GPS location: device has no GPS provider."

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "LocationService"

    const-string v6, "Failed to retrieve GPS location: device has no GPS provider."

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "networkLocation":Landroid/location/Location;
    :catch_3
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v5, "LocationService"

    const-string v6, "Failed to retrieve network location: access appears to be disabled."

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 47
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "LocationService"

    const-string v6, "Failed to retrieve network location: device has no network provider."

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 49
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "LocationService"

    const-string v6, "Failed to retrieve GPS location: device has no network provider."

    invoke-static {v5, v6}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 55
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 56
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 57
    move-object v4, v1

    .local v4, "result":Landroid/location/Location;
    goto :goto_2

    .line 59
    .end local v4    # "result":Landroid/location/Location;
    :cond_1
    move-object v4, v3

    .restart local v4    # "result":Landroid/location/Location;
    goto :goto_2

    .line 61
    .end local v4    # "result":Landroid/location/Location;
    :cond_2
    if-eqz v1, :cond_3

    .line 62
    move-object v4, v1

    .restart local v4    # "result":Landroid/location/Location;
    goto :goto_2

    .line 64
    .end local v4    # "result":Landroid/location/Location;
    :cond_3
    move-object v4, v3

    .restart local v4    # "result":Landroid/location/Location;
    goto :goto_2
.end method
