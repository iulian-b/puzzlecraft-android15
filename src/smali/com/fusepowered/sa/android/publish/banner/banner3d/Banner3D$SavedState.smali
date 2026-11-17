.class Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;
.super Landroid/view/View$BaseSavedState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

.field public bDefaultLoad:Z

.field public bIsVisible:Z

.field private currentImage:I

.field private details:[Lcom/fusepowered/sa/android/publish/model/AdDetails;

.field public faces:[Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

.field private firstRotation:I

.field public loaded:Z

.field public loading:Z

.field public options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

.field public overrides:Lcom/fusepowered/sa/android/publish/adinformation/b;

.field private rotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState$1;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState$1;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_5

    iput-boolean v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->currentImage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->rotation:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->firstRotation:I

    const-class v1, Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    new-array v2, v2, [Lcom/fusepowered/sa/android/publish/model/AdDetails;

    iput-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->details:[Lcom/fusepowered/sa/android/publish/model/AdDetails;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->details:[Lcom/fusepowered/sa/android/publish/model/AdDetails;

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->loaded:Z

    if-ne v1, v4, :cond_1

    iput-boolean v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->loaded:Z

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->loading:Z

    if-ne v1, v4, :cond_2

    iput-boolean v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->loading:Z

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->bDefaultLoad:Z

    if-ne v1, v4, :cond_3

    iput-boolean v4, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->bDefaultLoad:Z

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_4

    new-array v1, v2, [Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    const-class v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/adinformation/b;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->overrides:Lcom/fusepowered/sa/android/publish/adinformation/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    :goto_1
    return-void

    :cond_5
    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentImage()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->currentImage:I

    return v0
.end method

.method public getDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/model/AdDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->details:[Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->rotation:F

    return v0
.end method

.method public isFirstRotation()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->firstRotation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentImage(I)V
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->currentImage:I

    return-void
.end method

.method public setDetails(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/model/AdDetails;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fusepowered/sa/android/publish/model/AdDetails;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->details:[Lcom/fusepowered/sa/android/publish/model/AdDetails;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->details:[Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/AdDetails;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFirstRotation(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->firstRotation:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->rotation:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->currentImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->rotation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->firstRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->details:[Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->loaded:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->loading:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->bDefaultLoad:Z

    if-eqz v0, :cond_2

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->overrides:Lcom/fusepowered/sa/android/publish/adinformation/b;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->options:Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$SavedState;->adPreferences:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method
