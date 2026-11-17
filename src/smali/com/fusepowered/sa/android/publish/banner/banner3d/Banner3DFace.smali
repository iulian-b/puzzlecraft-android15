.class public Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/fusepowered/sa/android/publish/f/d$a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Ljava/lang/Boolean;

.field private f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace$1;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace$1;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/fusepowered/sa/android/publish/model/AdDetails;Lcom/fusepowered/sa/android/publish/banner/BannerOptions;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->c:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->d:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->e:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {p0, p1, p4, p2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/banner/BannerOptions;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->c:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->d:Landroid/graphics/Bitmap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->e:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    const-class v0, Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/AdDetails;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->c:Landroid/graphics/Bitmap;

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->d:Landroid/graphics/Bitmap;

    new-array v0, v2, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v0, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->e:Ljava/lang/Boolean;

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    invoke-static {p4, p3}, Lcom/fusepowered/sa/android/publish/f/o;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    const-string v3, "Couldn\'t parse intent details json!"

    invoke-static {v2, v3, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->d:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/fusepowered/sa/android/publish/model/AdDetails;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Impression: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/fusepowered/sa/android/publish/model/AdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/fusepowered/sa/android/publish/model/AdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fusepowered/sa/android/publish/f/o;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->e:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/banner/BannerOptions;Landroid/view/ViewGroup;)V
    .locals 5

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-static {p1, v0}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v0

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->d()I

    move-result v2

    invoke-static {p1, v2}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->j()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->e()I

    move-result v3

    invoke-static {p1, v3}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->k()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    new-instance v1, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->d()I

    move-result v3

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->e()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v1, p1, v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;-><init>(Landroid/content/Context;Landroid/graphics/Point;)V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/fusepowered/sa/android/publish/model/AdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/fusepowered/sa/android/publish/model/AdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getRating()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->setRating(F)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/fusepowered/sa/android/publish/model/AdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->setDescription(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->isCPE()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->setButtonText(Z)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a(Landroid/graphics/Bitmap;II)V

    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    invoke-virtual {p3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->setVisibility(I)V

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->c()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    const v2, 0x1080093

    invoke-virtual {v1, v2, v0, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->a(III)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/f/d;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/fusepowered/sa/android/publish/model/AdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/fusepowered/sa/android/publish/f/d;-><init>(Ljava/lang/String;Lcom/fusepowered/sa/android/publish/f/d$a;I)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/f/d;->a()V

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Banner Face Image Async Request: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/fusepowered/sa/android/publish/model/AdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->f:Lcom/fusepowered/sa/android/publish/banner/banner3d/a;

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/a;->setImage(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->c()V

    :cond_0
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/fusepowered/sa/android/publish/model/AdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getIntentPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/fusepowered/sa/android/publish/model/AdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getIntentDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/fusepowered/sa/android/publish/model/AdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/fusepowered/sa/android/publish/model/AdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->isSmartRedirect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/fusepowered/sa/android/publish/model/AdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfa0

    invoke-static {p1, v0, v1}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/fusepowered/sa/android/publish/model/AdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a()Lcom/fusepowered/sa/android/publish/model/AdDetails;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
