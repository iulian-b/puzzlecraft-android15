.class public final Lcom/fusepowered/l1/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/l1/AdvertisingIdClient$1;,
        Lcom/fusepowered/l1/AdvertisingIdClient$AdvertisingInterface;,
        Lcom/fusepowered/l1/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 39
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 40
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Cannot be called from the main thread"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 44
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string v7, "com.android.vending"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    new-instance v2, Lcom/fusepowered/l1/AdvertisingIdClient$AdvertisingConnection;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/fusepowered/l1/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/fusepowered/l1/AdvertisingIdClient$1;)V

    .line 50
    .local v2, "connection":Lcom/fusepowered/l1/AdvertisingIdClient$AdvertisingConnection;
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "com.google.android.gms"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v5, v2, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 55
    :try_start_1
    new-instance v1, Lcom/fusepowered/l1/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v2}, Lcom/fusepowered/l1/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/fusepowered/l1/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 56
    .local v1, "adInterface":Lcom/fusepowered/l1/AdvertisingIdClient$AdvertisingInterface;
    new-instance v0, Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;

    invoke-virtual {v1}, Lcom/fusepowered/l1/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/fusepowered/l1/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v8

    invoke-direct {v0, v7, v8}, Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .local v0, "adInfo":Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v0

    .line 45
    .end local v0    # "adInfo":Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;
    .end local v1    # "adInterface":Lcom/fusepowered/l1/AdvertisingIdClient$AdvertisingInterface;
    .end local v2    # "connection":Lcom/fusepowered/l1/AdvertisingIdClient$AdvertisingConnection;
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 46
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "connection":Lcom/fusepowered/l1/AdvertisingIdClient$AdvertisingConnection;
    .restart local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v4

    .line 60
    .local v4, "exception":Ljava/lang/Exception;
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .end local v4    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v7

    .line 65
    :cond_1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Google Play connection failed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
