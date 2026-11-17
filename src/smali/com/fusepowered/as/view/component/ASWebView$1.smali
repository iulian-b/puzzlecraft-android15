.class Lcom/fusepowered/as/view/component/ASWebView$1;
.super Ljava/lang/Object;
.source "ASWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/component/ASWebView;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/view/component/ASWebView;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/component/ASWebView;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fusepowered/as/view/component/ASWebView$1;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
