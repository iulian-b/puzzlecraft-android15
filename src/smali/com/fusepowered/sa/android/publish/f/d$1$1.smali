.class Lcom/fusepowered/sa/android/publish/f/d$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/f/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/fusepowered/sa/android/publish/f/d$1;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/f/d$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/f/d$1$1;->b:Lcom/fusepowered/sa/android/publish/f/d$1;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/f/d$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/d$1$1;->b:Lcom/fusepowered/sa/android/publish/f/d$1;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/f/d$1;->a:Lcom/fusepowered/sa/android/publish/f/d;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/d;->b(Lcom/fusepowered/sa/android/publish/f/d;)Lcom/fusepowered/sa/android/publish/f/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/d$1$1;->b:Lcom/fusepowered/sa/android/publish/f/d$1;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/f/d$1;->a:Lcom/fusepowered/sa/android/publish/f/d;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/d;->b(Lcom/fusepowered/sa/android/publish/f/d;)Lcom/fusepowered/sa/android/publish/f/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/f/d$1$1;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/f/d$1$1;->b:Lcom/fusepowered/sa/android/publish/f/d$1;

    iget-object v2, v2, Lcom/fusepowered/sa/android/publish/f/d$1;->a:Lcom/fusepowered/sa/android/publish/f/d;

    invoke-static {v2}, Lcom/fusepowered/sa/android/publish/f/d;->c(Lcom/fusepowered/sa/android/publish/f/d;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/d$a;->a(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method
