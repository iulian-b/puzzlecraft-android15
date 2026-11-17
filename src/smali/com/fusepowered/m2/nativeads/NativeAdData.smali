.class Lcom/fusepowered/m2/nativeads/NativeAdData;
.super Ljava/lang/Object;
.source "NativeAdData.java"


# instance fields
.field private final adRenderer:Lcom/fusepowered/m2/nativeads/MoPubAdRenderer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final adResponse:Lcom/fusepowered/m2/nativeads/NativeResponse;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final adUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/fusepowered/m2/nativeads/MoPubAdRenderer;Lcom/fusepowered/m2/nativeads/NativeResponse;)V
    .locals 0
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adRenderer"    # Lcom/fusepowered/m2/nativeads/MoPubAdRenderer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adResponse"    # Lcom/fusepowered/m2/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/NativeAdData;->adUnitId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/fusepowered/m2/nativeads/NativeAdData;->adRenderer:Lcom/fusepowered/m2/nativeads/MoPubAdRenderer;

    .line 18
    iput-object p3, p0, Lcom/fusepowered/m2/nativeads/NativeAdData;->adResponse:Lcom/fusepowered/m2/nativeads/NativeResponse;

    .line 19
    return-void
.end method


# virtual methods
.method getAd()Lcom/fusepowered/m2/nativeads/NativeResponse;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdData;->adResponse:Lcom/fusepowered/m2/nativeads/NativeResponse;

    return-object v0
.end method

.method getAdRenderer()Lcom/fusepowered/m2/nativeads/MoPubAdRenderer;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdData;->adRenderer:Lcom/fusepowered/m2/nativeads/MoPubAdRenderer;

    return-object v0
.end method

.method getAdUnitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeAdData;->adUnitId:Ljava/lang/String;

    return-object v0
.end method
