.class public Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;
.super Lcom/fusepowered/sa/android/publish/model/AdPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;
    }
.end annotation


# static fields
.field private static final DEFAULT_ADS_NUMBER:I = 0x1

.field private static final DEFAULT_AUTO_DOWNLOAD_BITMAP:Z = false

.field private static final DEFAULT_BITMAP_SIZE:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

.field private static final DEFAULT_USE_SIMPLE_TOKEN:Z = true

.field private static EXCEPTION_LOW_ADS_NUMBER:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x65af91cd2277329fL


# instance fields
.field private adsNumber:I

.field private autoBitmapDownload:Z

.field private bitmapSize:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

.field private useSimpleToken:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Ads Number must be >= 1"

    sput-object v0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->EXCEPTION_LOW_ADS_NUMBER:Ljava/lang/String;

    sget-object v0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;->SIZE150X150:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    sput-object v0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->DEFAULT_BITMAP_SIZE:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    iput v1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->adsNumber:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->autoBitmapDownload:Z

    sget-object v0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->DEFAULT_BITMAP_SIZE:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->bitmapSize:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->useSimpleToken:Z

    return-void
.end method


# virtual methods
.method public getAdsNumber()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->adsNumber:I

    return v0
.end method

.method public getImageSize()Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->bitmapSize:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    return-object v0
.end method

.method public isAutoBitmapDownload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->autoBitmapDownload:Z

    return v0
.end method

.method public isSimpleToken()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->useSimpleToken:Z

    return v0
.end method

.method public setAdsNumber(I)Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->EXCEPTION_LOW_ADS_NUMBER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->adsNumber:I

    return-object p0
.end method

.method public setAutoBitmapDownload(Z)Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->autoBitmapDownload:Z

    return-object p0
.end method

.method public setImageSize(Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;)Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->bitmapSize:Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\n===== NativeAdConfig =====\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    adsNumber: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->getAdsNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    autoBitmapDownload: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->isAutoBitmapDownload()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    bitmapSize: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->getImageSize()Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    useSimpleToken: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->isSimpleToken()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "===== End NativeAdConfig ====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useSimpleToken(Z)Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->useSimpleToken:Z

    return-object p0
.end method
