.class Lcom/fusepowered/sa/android/publish/b/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/b/e;->b(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/fusepowered/sa/android/publish/b/e;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/b/e;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/b/e$1;->b:Lcom/fusepowered/sa/android/publish/b/e;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/b/e$1;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/b/e$1;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method
