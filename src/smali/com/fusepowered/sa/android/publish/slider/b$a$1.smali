.class Lcom/fusepowered/sa/android/publish/slider/b$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/slider/b$a;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/fusepowered/sa/android/publish/slider/b$a;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/slider/b$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/slider/b$a$1;->b:Lcom/fusepowered/sa/android/publish/slider/b$a;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/slider/b$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b$a$1;->b:Lcom/fusepowered/sa/android/publish/slider/b$a;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/slider/b$a;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/slider/b;->c(Lcom/fusepowered/sa/android/publish/slider/b;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b$a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
