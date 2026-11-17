.class Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$1;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->onAdSuccess(Lcom/fusepowered/m2/network/AdResponse;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;

.field final synthetic val$customEvent:Lcom/fusepowered/m2/mobileads/CustomEventRewardedVideo;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;Lcom/fusepowered/m2/mobileads/CustomEventRewardedVideo;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$1;->this$0:Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;

    iput-object p2, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$1;->val$customEvent:Lcom/fusepowered/m2/mobileads/CustomEventRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 314
    const-string v0, "Custom Event failed to load rewarded video in a timely fashion."

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$1;->val$customEvent:Lcom/fusepowered/m2/mobileads/CustomEventRewardedVideo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$1;->val$customEvent:Lcom/fusepowered/m2/mobileads/CustomEventRewardedVideo;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/CustomEventRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    .line 317
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$1;->val$customEvent:Lcom/fusepowered/m2/mobileads/CustomEventRewardedVideo;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/CustomEventRewardedVideo;->onInvalidate()V

    .line 318
    return-void
.end method
