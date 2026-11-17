.class Lcom/chillingo/liboffers/gui/OfferGuiImpl$1;
.super Ljava/lang/Object;
.source "OfferGuiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/gui/OfferGuiImpl;->startDrawingOverActivity(Landroid/app/Activity;Lcom/chillingo/liboffers/OfferSession$OffersCorner;Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/gui/OfferGuiImpl;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/gui/OfferGuiImpl;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$1;->this$0:Lcom/chillingo/liboffers/gui/OfferGuiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$1;->this$0:Lcom/chillingo/liboffers/gui/OfferGuiImpl;

    invoke-static {v0}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->access$000(Lcom/chillingo/liboffers/gui/OfferGuiImpl;)V

    .line 316
    return-void
.end method
