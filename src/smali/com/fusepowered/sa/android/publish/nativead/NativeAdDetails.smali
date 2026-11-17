.class public Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/fusepowered/sa/android/publish/f/d$a;
.implements Lcom/fusepowered/sa/android/publish/nativead/NativeAdInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails$3;,
        Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

.field private b:I

.field private c:Landroid/graphics/Bitmap;

.field private d:Z

.field private e:Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails$2;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails$2;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-class v0, Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/AdDetails;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->d:Z

    if-ne v0, v1, :cond_2

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->d:Z

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/sa/android/publish/model/AdDetails;Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;ILcom/fusepowered/sa/android/publish/nativead/NativeAdDetails$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->d:Z

    const-string v0, "StartAppNativeAd"

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializiang SingleAd ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    iput p3, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->b:I

    iput-object p4, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->e:Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails$a;

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->isAutoBitmapDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/f/d;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p3}, Lcom/fusepowered/sa/android/publish/f/d;-><init>(Ljava/lang/String;Lcom/fusepowered/sa/android/publish/f/d$a;I)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/f/d;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->b:I

    return v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails$1;-><init>(Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic b(Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;)Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails$a;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->e:Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCampaignAction()Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;
    .locals 2

    sget-object v0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;->b:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->isCPE()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;->a:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    :cond_0
    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getCategory()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "http://www.dummy.com"

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInstalls()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getInstalls()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPackacgeName()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRating()F
    .locals 2

    const/high16 v0, 0x40a00000    # 5.0f

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getRating()F

    move-result v0

    :cond_0
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public sendClick(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails$3;->a:[I

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->getCampaignAction()Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->isSmartRedirect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-static {p1, v0, v1}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fusepowered/sa/android/publish/f/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->getPackacgeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getIntentDetails()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendImpression(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x3

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->d:Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "StartAppNativeAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Impression for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fusepowered/sa/android/publish/f/o;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "StartAppNativeAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already sent impression for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         Title: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         Description: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]...\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         Rating: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->getRating()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         Installs: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->getInstalls()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         Category: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         PackageName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->getPackacgeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         CampaginAction: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->getCampaignAction()Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    iget-boolean v4, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->d:Z

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->a:Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-ne v3, v1, :cond_2

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdDetails;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method
