.class public Lcom/fusepowered/sa/android/publish/adinformation/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x654e60b95130353dL


# instance fields
.field private transient a:Landroid/graphics/Bitmap;

.field private transient b:Landroid/graphics/Bitmap;

.field private transient c:Landroid/graphics/Bitmap;

.field private height:I

.field private imageFallbackUrl:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->imageUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->imageFallbackUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->c:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->width:I

    iput v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->height:I

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/adinformation/d;
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/d;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/adinformation/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/fusepowered/sa/android/publish/adinformation/d;->b(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/d;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fusepowered/sa/android/publish/adinformation/d;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->c:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->name:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->width:I

    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->c:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->imageFallbackUrl:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->width:I

    return v0
.end method

.method protected b(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/adinformation/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fusepowered/sa/android/publish/f/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->b:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->height:I

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->name:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->height:I

    return v0
.end method

.method protected d()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/adinformation/d;->a(Landroid/graphics/Bitmap;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/f/d;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->imageUrl:Ljava/lang/String;

    new-instance v2, Lcom/fusepowered/sa/android/publish/adinformation/d$1;

    invoke-direct {v2, p0}, Lcom/fusepowered/sa/android/publish/adinformation/d$1;-><init>(Lcom/fusepowered/sa/android/publish/adinformation/d;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/sa/android/publish/f/d;-><init>(Ljava/lang/String;Lcom/fusepowered/sa/android/publish/f/d$a;I)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/f/d;->a()V

    return-void
.end method

.method protected e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/d;->imageFallbackUrl:Ljava/lang/String;

    return-object v0
.end method
