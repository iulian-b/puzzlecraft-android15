.class Lcom/chillingo/liboffers/session/OfferPrivateSession$3;
.super Ljava/lang/Object;
.source "OfferPrivateSession.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/session/OfferPrivateSession;->doDisplayActivationDialog(Landroid/app/Activity;Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/session/OfferPrivateSession;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/session/OfferPrivateSession;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession$3;->this$0:Lcom/chillingo/liboffers/session/OfferPrivateSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 731
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession$3;->this$0:Lcom/chillingo/liboffers/session/OfferPrivateSession;

    iget-object v0, v0, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerActivationHandler:Lcom/chillingo/liboffers/session/OfferActivationHandler;

    iget-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession$3;->this$0:Lcom/chillingo/liboffers/session/OfferPrivateSession;

    invoke-static {v1}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->access$000(Lcom/chillingo/liboffers/session/OfferPrivateSession;)Lcom/chillingo/liboffers/model/Offer;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession$3;->this$0:Lcom/chillingo/liboffers/session/OfferPrivateSession;

    invoke-static {v2}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->access$100(Lcom/chillingo/liboffers/session/OfferPrivateSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/chillingo/liboffers/session/OfferActivationHandler;->activateOffer(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V

    .line 735
    return-void
.end method
