.class Lcom/fusepowered/m2/nativeads/ClientPositioningSource;
.super Ljava/lang/Object;
.source "ClientPositioningSource.java"

# interfaces
.implements Lcom/fusepowered/m2/nativeads/PositioningSource;


# instance fields
.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPositioning:Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 1
    .param p1, "positioning"    # Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ClientPositioningSource;->mHandler:Landroid/os/Handler;

    .line 16
    invoke-static {p1}, Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning;->clone(Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/ClientPositioningSource;->mPositioning:Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/nativeads/ClientPositioningSource;)Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/nativeads/ClientPositioningSource;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ClientPositioningSource;->mPositioning:Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    return-object v0
.end method


# virtual methods
.method public loadPositions(Ljava/lang/String;Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ClientPositioningSource;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fusepowered/m2/nativeads/ClientPositioningSource$1;

    invoke-direct {v1, p0, p2}, Lcom/fusepowered/m2/nativeads/ClientPositioningSource$1;-><init>(Lcom/fusepowered/m2/nativeads/ClientPositioningSource;Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method
