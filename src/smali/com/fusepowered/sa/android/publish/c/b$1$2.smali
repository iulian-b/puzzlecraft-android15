.class Lcom/fusepowered/sa/android/publish/c/b$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/c/b$1;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/fusepowered/sa/android/publish/c/b$1;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/c/b$1;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/c/b$1$2;->c:Lcom/fusepowered/sa/android/publish/c/b$1;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/c/b$1$2;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/c/b$1$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b$1$2;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b$1$2;->c:Lcom/fusepowered/sa/android/publish/c/b$1;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/c/b$1;->a:Lcom/fusepowered/sa/android/publish/c/b;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/c/b;->b:Lcom/fusepowered/sa/android/publish/Ad;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/b$1$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/Ad;->setErrorMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b$1$2;->c:Lcom/fusepowered/sa/android/publish/c/b$1;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/c/b$1;->a:Lcom/fusepowered/sa/android/publish/c/b;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/c/b;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b$1$2;->c:Lcom/fusepowered/sa/android/publish/c/b$1;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/c/b$1;->a:Lcom/fusepowered/sa/android/publish/c/b;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/c/b;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/b$1$2;->c:Lcom/fusepowered/sa/android/publish/c/b$1;

    iget-object v1, v1, Lcom/fusepowered/sa/android/publish/c/b$1;->a:Lcom/fusepowered/sa/android/publish/c/b;

    iget-object v1, v1, Lcom/fusepowered/sa/android/publish/c/b;->b:Lcom/fusepowered/sa/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    :cond_0
    return-void
.end method
