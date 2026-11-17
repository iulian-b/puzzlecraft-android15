.class Lcom/chillingo/liboffers/gui/misc/UpdateProxy$1;
.super Ljava/util/TimerTask;
.source "UpdateProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->createStandardTimer(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/gui/misc/UpdateProxy;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/gui/misc/UpdateProxy;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy$1;->this$0:Lcom/chillingo/liboffers/gui/misc/UpdateProxy;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy$1;->this$0:Lcom/chillingo/liboffers/gui/misc/UpdateProxy;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->update()V

    .line 62
    return-void
.end method
