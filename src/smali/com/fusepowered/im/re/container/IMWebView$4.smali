.class Lcom/fusepowered/im/re/container/IMWebView$4;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/im/re/container/IMWebView;->raiseGalleryImageSelectedEvent(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/fusepowered/im/re/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/fusepowered/im/re/container/IMWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2900
    iput-object p1, p0, Lcom/fusepowered/im/re/container/IMWebView$4;->b:Lcom/fusepowered/im/re/container/IMWebView;

    iput-object p2, p0, Lcom/fusepowered/im/re/container/IMWebView$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2904
    iget-object v0, p0, Lcom/fusepowered/im/re/container/IMWebView$4;->b:Lcom/fusepowered/im/re/container/IMWebView;

    iget-object v1, p0, Lcom/fusepowered/im/re/container/IMWebView$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/im/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 2905
    return-void
.end method
