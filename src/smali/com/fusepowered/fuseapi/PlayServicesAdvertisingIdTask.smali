.class public Lcom/fusepowered/fuseapi/PlayServicesAdvertisingIdTask;
.super Landroid/os/AsyncTask;
.source "PlayServicesAdvertisingIdTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayServicesAdvertisingIdTask"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/fusepowered/fuseapi/PlayServicesAdvertisingIdTask;->context:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/fuseapi/PlayServicesAdvertisingIdTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 26
    const-string v4, "PlayServicesAdvertisingIdTask"

    const-string v5, "Getting Advertising ID"

    invoke-static {v4, v5}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_0
    iget-object v4, p0, Lcom/fusepowered/fuseapi/PlayServicesAdvertisingIdTask;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v3

    .line 50
    .local v3, "isLAT":Z
    const-string v4, "PlayServicesAdvertisingIdTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got ad id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "isLAT":Z
    :goto_0
    return-object v2

    .line 31
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "PlayServicesAdvertisingIdTask"

    const-string v5, "Could not get ad id (ioexception)"

    invoke-static {v4, v5, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 36
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 38
    .local v1, "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    const-string v4, "PlayServicesAdvertisingIdTask"

    const-string v5, "Could not get ad id (not available)"

    invoke-static {v4, v5, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    .end local v1    # "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    :catch_2
    move-exception v1

    .line 41
    .local v1, "e":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    const-string v4, "PlayServicesAdvertisingIdTask"

    const-string v5, "Could not get ad id (repairable)"

    invoke-static {v4, v5, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 43
    .end local v1    # "e":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    :catch_3
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PlayServicesAdvertisingIdTask"

    const-string v5, "Could not get ad id for unknown reason"

    invoke-static {v4, v5, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
