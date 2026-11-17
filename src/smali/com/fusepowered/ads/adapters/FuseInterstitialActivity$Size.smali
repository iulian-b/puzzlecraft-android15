.class public Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Size;
.super Ljava/lang/Object;
.source "FuseInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput p1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Size;->width:I

    .line 246
    iput p2, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Size;->height:I

    .line 247
    return-void
.end method
