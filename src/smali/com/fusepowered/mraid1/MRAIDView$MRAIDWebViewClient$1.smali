.class Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient$1;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;


# direct methods
.method constructor <init>(Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;)V
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;

    iget-object v1, v0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.setPlacementType(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$400(Lcom/fusepowered/mraid1/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "interstitial"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\');"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2800(Lcom/fusepowered/mraid1/MRAIDView;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2900(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1207
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$3000(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1208
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$3300(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1209
    const-string v0, "MRAIDView"

    const-string v1, "calling fireStateChangeEvent 2"

    invoke-static {v0, v1}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2200(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1211
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$3400(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1212
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$3500(Lcom/fusepowered/mraid1/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$3600(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1215
    :cond_0
    return-void

    .line 1205
    :cond_1
    const-string v0, "inline"

    goto :goto_0
.end method
