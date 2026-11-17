.class Lcom/fusepowered/l1/AdBrowserActivity$1;
.super Ljava/lang/Object;
.source "AdBrowserActivity.java"

# interfaces
.implements Lcom/fusepowered/l1/AdBrowseWebViewClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/AdBrowserActivity;->initWebView(Lcom/fusepowered/l1/BrowserWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/AdBrowserActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/AdBrowserActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fusepowered/l1/AdBrowserActivity$1;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeaveApp()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity$1;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-static {v0}, Lcom/fusepowered/l1/AdBrowserActivity;->access$300(Lcom/fusepowered/l1/AdBrowserActivity;)V

    .line 109
    return-void
.end method

.method public onPageFinished(Z)V
    .locals 3
    .param p1, "canGoBack"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity$1;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-static {v0}, Lcom/fusepowered/l1/AdBrowserActivity;->access$000(Lcom/fusepowered/l1/AdBrowserActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity$1;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowserActivity$1;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-static {v1}, Lcom/fusepowered/l1/AdBrowserActivity;->access$100(Lcom/fusepowered/l1/AdBrowserActivity;)Landroid/widget/Button;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/utilites/Drawables;->BTN_BACK_ACTIVE:Lcom/fusepowered/l1/utilites/Drawables;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/AdBrowserActivity;->access$200(Lcom/fusepowered/l1/AdBrowserActivity;Landroid/widget/Button;Lcom/fusepowered/l1/utilites/Drawables;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity$1;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    iget-object v1, p0, Lcom/fusepowered/l1/AdBrowserActivity$1;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-static {v1}, Lcom/fusepowered/l1/AdBrowserActivity;->access$100(Lcom/fusepowered/l1/AdBrowserActivity;)Landroid/widget/Button;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/utilites/Drawables;->BTN_BACK_INACTIVE:Lcom/fusepowered/l1/utilites/Drawables;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/AdBrowserActivity;->access$200(Lcom/fusepowered/l1/AdBrowserActivity;Landroid/widget/Button;Lcom/fusepowered/l1/utilites/Drawables;)V

    goto :goto_0
.end method

.method public onPageStarted()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity$1;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-static {v0}, Lcom/fusepowered/l1/AdBrowserActivity;->access$000(Lcom/fusepowered/l1/AdBrowserActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    return-void
.end method

.method public onReceiveError()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity$1;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdBrowserActivity;->finish()V

    .line 89
    return-void
.end method
