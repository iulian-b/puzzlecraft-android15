.class Lcom/fusepowered/l1/AdBrowserActivity$4;
.super Ljava/lang/Object;
.source "AdBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/AdBrowserActivity;->initButtonListeners(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/AdBrowserActivity;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/AdBrowserActivity;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/fusepowered/l1/AdBrowserActivity$4;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    iput-object p2, p0, Lcom/fusepowered/l1/AdBrowserActivity$4;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity$4;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-static {v0}, Lcom/fusepowered/l1/AdBrowserActivity;->access$400(Lcom/fusepowered/l1/AdBrowserActivity;)Lcom/fusepowered/l1/AdBrowseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdBrowseLayout;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/fusepowered/l1/AdBrowserActivity$4;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 166
    return-void
.end method
