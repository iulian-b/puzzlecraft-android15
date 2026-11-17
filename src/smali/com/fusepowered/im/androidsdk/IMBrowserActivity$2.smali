.class Lcom/fusepowered/im/androidsdk/IMBrowserActivity$2;
.super Ljava/lang/Object;
.source "IMBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/im/androidsdk/IMBrowserActivity;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/im/androidsdk/IMBrowserActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/im/androidsdk/IMBrowserActivity;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/fusepowered/im/androidsdk/IMBrowserActivity$2;->a:Lcom/fusepowered/im/androidsdk/IMBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 763
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 764
    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 765
    iget-object v0, p0, Lcom/fusepowered/im/androidsdk/IMBrowserActivity$2;->a:Lcom/fusepowered/im/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/fusepowered/im/androidsdk/IMBrowserActivity;->a(Lcom/fusepowered/im/androidsdk/IMBrowserActivity;)Lcom/fusepowered/im/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/im/re/container/IMWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/fusepowered/im/androidsdk/IMBrowserActivity$2;->a:Lcom/fusepowered/im/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/fusepowered/im/androidsdk/IMBrowserActivity;->a(Lcom/fusepowered/im/androidsdk/IMBrowserActivity;)Lcom/fusepowered/im/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/im/re/container/IMWebView;->goBack()V

    .line 775
    :cond_0
    :goto_0
    return v1

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/im/androidsdk/IMBrowserActivity$2;->a:Lcom/fusepowered/im/androidsdk/IMBrowserActivity;

    invoke-virtual {v0}, Lcom/fusepowered/im/androidsdk/IMBrowserActivity;->finish()V

    goto :goto_0

    .line 771
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 772
    const v0, -0xff0001

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
