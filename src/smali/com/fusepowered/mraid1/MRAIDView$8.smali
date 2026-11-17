.class Lcom/fusepowered/mraid1/MRAIDView$8;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/mraid1/MRAIDView;->closeFromResized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/mraid1/MRAIDView;


# direct methods
.method constructor <init>(Lcom/fusepowered/mraid1/MRAIDView;)V
    .locals 0

    .prologue
    .line 831
    iput-object p1, p0, Lcom/fusepowered/mraid1/MRAIDView$8;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$8;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2200(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 835
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$8;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2300(Lcom/fusepowered/mraid1/MRAIDView;)Lcom/fusepowered/mraid1/MRAIDViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$8;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2300(Lcom/fusepowered/mraid1/MRAIDView;)Lcom/fusepowered/mraid1/MRAIDViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$8;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-interface {v0, v1}, Lcom/fusepowered/mraid1/MRAIDViewListener;->mraidViewClose(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 838
    :cond_0
    return-void
.end method
