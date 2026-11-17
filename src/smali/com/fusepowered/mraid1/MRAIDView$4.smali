.class Lcom/fusepowered/mraid1/MRAIDView$4;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/mraid1/MRAIDView;->close()V
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
    .line 407
    iput-object p1, p0, Lcom/fusepowered/mraid1/MRAIDView$4;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 410
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$4;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$900(Lcom/fusepowered/mraid1/MRAIDView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$4;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$900(Lcom/fusepowered/mraid1/MRAIDView;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$4;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$400(Lcom/fusepowered/mraid1/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$4;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$900(Lcom/fusepowered/mraid1/MRAIDView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 418
    :cond_1
    :goto_0
    return-void

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$4;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$900(Lcom/fusepowered/mraid1/MRAIDView;)I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$4;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$900(Lcom/fusepowered/mraid1/MRAIDView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$4;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$1000(Lcom/fusepowered/mraid1/MRAIDView;)V

    goto :goto_0

    .line 415
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$4;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$900(Lcom/fusepowered/mraid1/MRAIDView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 416
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$4;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$1100(Lcom/fusepowered/mraid1/MRAIDView;)V

    goto :goto_0
.end method
