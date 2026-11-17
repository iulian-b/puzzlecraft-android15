.class final Lcom/fusepowered/nx/monetization/manager/CacheManager$1;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Lcom/fusepowered/nx/monetization/listeners/OnGetCacheDownloadCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/manager/CacheManager;->getOfferCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadComplete(Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;)V
    .locals 3
    .param p1, "cacheResponseData"    # Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 211
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->access$400()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/fusepowered/nx/monetization/tasks/CachingTask;

    invoke-direct {v2, p1}, Lcom/fusepowered/nx/monetization/tasks/CachingTask;-><init>(Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/manager/CacheManager;->access$502(Z)Z

    .line 218
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    const-string v1, "Exception in starting caching task."

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    goto :goto_0
.end method
