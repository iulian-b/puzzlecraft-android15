.class Lcom/fusepowered/l1/AdParams$AdParamsBuilder;
.super Ljava/lang/Object;
.source "AdParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/l1/AdParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdParamsBuilder"
.end annotation


# static fields
.field private static final DEFAULT_EXPIRED_TIME:I = 0x927c0

.field private static final MAX_REFRESH_TIME:I = 0x493e0

.field private static final MIN_REFRESH_TIME:I = 0x7530


# instance fields
.field private mExpiredDate:I

.field private final mFormat:Ljava/lang/String;

.field private mHtml:Ljava/lang/String;

.field private mOrientation:Ljava/lang/String;

.field private mRefreshTime:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mFormat:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/l1/AdParams$AdParamsBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/AdParams$AdParamsBuilder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mHtml:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/l1/AdParams$AdParamsBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/AdParams$AdParamsBuilder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/l1/AdParams$AdParamsBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/AdParams$AdParamsBuilder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mOrientation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/l1/AdParams$AdParamsBuilder;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/AdParams$AdParamsBuilder;

    .prologue
    .line 46
    iget v0, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mRefreshTime:I

    return v0
.end method

.method static synthetic access$400(Lcom/fusepowered/l1/AdParams$AdParamsBuilder;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/l1/AdParams$AdParamsBuilder;

    .prologue
    .line 46
    iget v0, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mExpiredDate:I

    return v0
.end method


# virtual methods
.method public build()Lcom/fusepowered/l1/AdParams;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/fusepowered/l1/AdParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/l1/AdParams;-><init>(Lcom/fusepowered/l1/AdParams$AdParamsBuilder;Lcom/fusepowered/l1/AdParams$1;)V

    return-object v0
.end method

.method public expiredTime(I)Lcom/fusepowered/l1/AdParams$AdParamsBuilder;
    .locals 1
    .param p1, "time"    # I

    .prologue
    const v0, 0x927c0

    .line 93
    if-nez p1, :cond_0

    .line 94
    iput v0, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mExpiredDate:I

    .line 103
    :goto_0
    return-object p0

    .line 96
    :cond_0
    mul-int/lit16 p1, p1, 0x3e8

    .line 97
    if-ge p1, v0, :cond_1

    .line 98
    iput v0, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mExpiredDate:I

    goto :goto_0

    .line 100
    :cond_1
    iput p1, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mExpiredDate:I

    goto :goto_0
.end method

.method public html(Ljava/lang/String;)Lcom/fusepowered/l1/AdParams$AdParamsBuilder;
    .locals 0
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mHtml:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public orientation(Ljava/lang/String;)Lcom/fusepowered/l1/AdParams$AdParamsBuilder;
    .locals 0
    .param p1, "orientation"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mOrientation:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public refreshTime(I)Lcom/fusepowered/l1/AdParams$AdParamsBuilder;
    .locals 2
    .param p1, "time"    # I

    .prologue
    const v1, 0x493e0

    const/16 v0, 0x7530

    .line 75
    if-nez p1, :cond_0

    .line 76
    iput v0, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mRefreshTime:I

    .line 89
    :goto_0
    return-object p0

    .line 78
    :cond_0
    mul-int/lit16 p1, p1, 0x3e8

    .line 79
    if-le p1, v1, :cond_1

    .line 80
    iput v1, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mRefreshTime:I

    goto :goto_0

    .line 82
    :cond_1
    if-ge p1, v0, :cond_2

    .line 83
    iput v0, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mRefreshTime:I

    goto :goto_0

    .line 86
    :cond_2
    iput p1, p0, Lcom/fusepowered/l1/AdParams$AdParamsBuilder;->mRefreshTime:I

    goto :goto_0
.end method
