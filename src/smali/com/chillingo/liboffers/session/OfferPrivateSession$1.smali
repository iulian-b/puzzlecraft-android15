.class Lcom/chillingo/liboffers/session/OfferPrivateSession$1;
.super Ljava/lang/Object;
.source "OfferPrivateSession.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 743
    iput-object p1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession$1;->this$0:Lcom/chillingo/liboffers/session/OfferPrivateSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 748
    return-void
.end method
