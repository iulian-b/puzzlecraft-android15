.class final Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$3;
.super Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$errorCode:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 401
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fusepowered/m2/mobileads/CustomEventRewardedVideo;>;"
    iput-object p3, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$3;->val$errorCode:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected forEach(Ljava/lang/String;)V
    .locals 2
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 404
    invoke-static {}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$300(Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$3;->val$errorCode:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-static {v0, p1, v1}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$500(Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    .line 406
    return-void
.end method
