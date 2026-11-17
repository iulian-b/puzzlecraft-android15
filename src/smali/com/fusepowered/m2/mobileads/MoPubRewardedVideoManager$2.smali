.class final Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$2;
.super Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 388
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fusepowered/m2/mobileads/CustomEventRewardedVideo;>;"
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected forEach(Ljava/lang/String;)V
    .locals 1
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 391
    invoke-static {}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$300(Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$400(Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;)Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    invoke-static {}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$400(Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;)Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoListener;->onRewardedVideoLoadSuccess(Ljava/lang/String;)V

    .line 395
    :cond_0
    return-void
.end method
