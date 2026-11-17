.class public Lcom/fusepowered/sa/android/publish/list3d/ListItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fusepowered/sa/android/publish/list3d/ListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:F

.field private h:Z

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/list3d/ListItem$1;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem$1;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->g:F

    iput-boolean v3, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->h:Z

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->i:Landroid/graphics/drawable/Drawable;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->i:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->g:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->h:Z

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->j:Ljava/lang/String;

    return-void

    :cond_0
    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->h:Z

    goto :goto_1
.end method

.method public constructor <init>(Lcom/fusepowered/sa/android/publish/model/AdDetails;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->g:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->h:Z

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->i:Landroid/graphics/drawable/Drawable;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getAdId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getRating()F

    move-result v0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->g:F

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->isSmartRedirect()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->h:Z

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getTemplate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getIntentDetails()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getIntentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->g:F

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->h:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->l:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->k:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->g:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->h:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/ListItem;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
