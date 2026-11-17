.class Lcom/chillingo/liboffers/session/OfferPrivateSession_$2;
.super Ljava/lang/Object;
.source "OfferPrivateSession_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/session/OfferPrivateSession_;->displayActivationDialog(Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/session/OfferPrivateSession_;

.field final synthetic val$activationData:Ljava/util/HashMap;

.field final synthetic val$dialogType:Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

.field final synthetic val$offer:Lcom/chillingo/liboffers/model/Offer;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/session/OfferPrivateSession_;Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_$2;->this$0:Lcom/chillingo/liboffers/session/OfferPrivateSession_;

    iput-object p2, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_$2;->val$dialogType:Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    iput-object p3, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_$2;->val$offer:Lcom/chillingo/liboffers/model/Offer;

    iput-object p4, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_$2;->val$activationData:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_$2;->this$0:Lcom/chillingo/liboffers/session/OfferPrivateSession_;

    iget-object v2, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_$2;->val$dialogType:Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    iget-object v3, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_$2;->val$offer:Lcom/chillingo/liboffers/model/Offer;

    iget-object v4, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession_$2;->val$activationData:Ljava/util/HashMap;

    invoke-static {v1, v2, v3, v4}, Lcom/chillingo/liboffers/session/OfferPrivateSession_;->access$101(Lcom/chillingo/liboffers/session/OfferPrivateSession_;Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "OfferPrivateSession_"

    const-string v2, "A runtime exception was thrown while executing code in a runnable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
