.class Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;
.super Landroid/view/View$BaseSavedState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/banner/Banner;
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
            "Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bFirstTime:Z

.field public type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState$1;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState$1;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Lcom/fusepowered/sa/android/publish/banner/Banner$BType;->REGULAR:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;->type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/fusepowered/sa/android/publish/banner/Banner$BType;->THREED:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;->type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;->bFirstTime:Z

    if-ne v0, v2, :cond_1

    iput-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;->bFirstTime:Z

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/fusepowered/sa/android/publish/banner/Banner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;->bFirstTime:Z

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$SavedState;->type:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    sget-object v3, Lcom/fusepowered/sa/android/publish/banner/Banner$BType;->THREED:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
