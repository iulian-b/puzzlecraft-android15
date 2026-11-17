.class public Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Lcom/fusepowered/m2/network/AdRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RewardedVideoRequestListener"
.end annotation


# instance fields
.field public final adUnitId:Ljava/lang/String;

.field private final mVideoManager:Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "videoManager"    # Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;
    .param p2, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;->adUnitId:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;->mVideoManager:Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;

    .line 64
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/fusepowered/m2/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/fusepowered/m2/volley/VolleyError;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;->mVideoManager:Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;->adUnitId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$100(Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;Lcom/fusepowered/m2/volley/VolleyError;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onSuccess(Lcom/fusepowered/m2/network/AdResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/fusepowered/m2/network/AdResponse;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;->mVideoManager:Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;->adUnitId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$000(Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;Lcom/fusepowered/m2/network/AdResponse;Ljava/lang/String;)V

    .line 69
    return-void
.end method
