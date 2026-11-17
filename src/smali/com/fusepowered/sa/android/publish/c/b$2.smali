.class Lcom/fusepowered/sa/android/publish/c/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/c/b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/fusepowered/sa/android/publish/c/b;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/c/b;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/c/b$2;->b:Lcom/fusepowered/sa/android/publish/c/b;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/c/b$2;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b$2;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b$2;->b:Lcom/fusepowered/sa/android/publish/c/b;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/c/b;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/c/b$2;->b:Lcom/fusepowered/sa/android/publish/c/b;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/c/b;->d:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/c/b$2;->b:Lcom/fusepowered/sa/android/publish/c/b;

    iget-object v1, v1, Lcom/fusepowered/sa/android/publish/c/b;->b:Lcom/fusepowered/sa/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    :cond_0
    return-void
.end method
