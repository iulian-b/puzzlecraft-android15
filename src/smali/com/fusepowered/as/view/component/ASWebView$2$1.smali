.class Lcom/fusepowered/as/view/component/ASWebView$2$1;
.super Ljava/lang/Object;
.source "ASWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/component/ASWebView$2;->onProgressChanged(Landroid/webkit/WebView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/as/view/component/ASWebView$2;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/component/ASWebView$2;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/fusepowered/as/view/component/ASWebView$2$1;->this$1:Lcom/fusepowered/as/view/component/ASWebView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView$2$1;->this$1:Lcom/fusepowered/as/view/component/ASWebView$2;

    iget-object v0, v0, Lcom/fusepowered/as/view/component/ASWebView$2;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASWebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView$2$1;->this$1:Lcom/fusepowered/as/view/component/ASWebView$2;

    iget-object v0, v0, Lcom/fusepowered/as/view/component/ASWebView$2;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Lcom/fusepowered/as/view/component/ASWebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView$2$1;->this$1:Lcom/fusepowered/as/view/component/ASWebView$2;

    iget-object v0, v0, Lcom/fusepowered/as/view/component/ASWebView$2;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/ASWebView;->access$000(Lcom/fusepowered/as/view/component/ASWebView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView$2$1;->this$1:Lcom/fusepowered/as/view/component/ASWebView$2;

    iget-object v0, v0, Lcom/fusepowered/as/view/component/ASWebView$2;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/ASWebView;->access$110(Lcom/fusepowered/as/view/component/ASWebView;)I

    .line 123
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView$2$1;->this$1:Lcom/fusepowered/as/view/component/ASWebView$2;

    iget-object v0, v0, Lcom/fusepowered/as/view/component/ASWebView$2;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/ASWebView;->access$100(Lcom/fusepowered/as/view/component/ASWebView;)I

    move-result v0

    .line 124
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView$2$1;->this$1:Lcom/fusepowered/as/view/component/ASWebView$2;

    iget-object v0, v0, Lcom/fusepowered/as/view/component/ASWebView$2;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASWebView;->getContentHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView$2$1;->this$1:Lcom/fusepowered/as/view/component/ASWebView$2;

    iget-object v0, v0, Lcom/fusepowered/as/view/component/ASWebView$2;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/ASWebView;->access$200(Lcom/fusepowered/as/view/component/ASWebView;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView$2$1;->this$1:Lcom/fusepowered/as/view/component/ASWebView$2;

    iget-object v0, v0, Lcom/fusepowered/as/view/component/ASWebView$2;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/ASWebView;->access$200(Lcom/fusepowered/as/view/component/ASWebView;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView$2$1;->this$1:Lcom/fusepowered/as/view/component/ASWebView$2;

    iget-object v0, v0, Lcom/fusepowered/as/view/component/ASWebView$2;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/ASWebView;->access$200(Lcom/fusepowered/as/view/component/ASWebView;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView$2$1;->this$1:Lcom/fusepowered/as/view/component/ASWebView$2;

    iget-object v0, v0, Lcom/fusepowered/as/view/component/ASWebView$2;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/ASWebView;->access$200(Lcom/fusepowered/as/view/component/ASWebView;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    goto :goto_0
.end method
