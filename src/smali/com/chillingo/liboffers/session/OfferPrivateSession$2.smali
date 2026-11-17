.class Lcom/chillingo/liboffers/session/OfferPrivateSession$2;
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
    .line 737
    iput-object p1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession$2;->this$0:Lcom/chillingo/liboffers/session/OfferPrivateSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 740
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 741
    return-void
.end method
