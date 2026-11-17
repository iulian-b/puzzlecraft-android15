.class public Lcom/fusepowered/vast/util/DefaultMediaPicker;
.super Ljava/lang/Object;
.source "DefaultMediaPicker.java"

# interfaces
.implements Lcom/fusepowered/vast/processor/VASTMediaPicker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/vast/util/DefaultMediaPicker$1;,
        Lcom/fusepowered/vast/util/DefaultMediaPicker$AreaComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultMediaPicker"

.field private static final maxPixels:I = 0x1388


# instance fields
.field SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private deviceArea:I

.field private deviceHeight:I

.field private deviceWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    iput-object v0, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/vast/util/DefaultMediaPicker;->setDeviceWidthHeight(II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    iput-object v0, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->context:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/fusepowered/vast/util/DefaultMediaPicker;->setDeviceWidthHeight()V

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/vast/util/DefaultMediaPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/vast/util/DefaultMediaPicker;

    .prologue
    .line 23
    iget v0, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->deviceArea:I

    return v0
.end method

.method private getBestMatch(Ljava/util/List;)Lcom/fusepowered/vast/model/VASTMediaFile;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/vast/model/VASTMediaFile;",
            ">;)",
            "Lcom/fusepowered/vast/model/VASTMediaFile;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/vast/model/VASTMediaFile;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 185
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fusepowered/vast/model/VASTMediaFile;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/vast/model/VASTMediaFile;

    .line 187
    .local v1, "media":Lcom/fusepowered/vast/model/VASTMediaFile;
    invoke-direct {p0, v1}, Lcom/fusepowered/vast/util/DefaultMediaPicker;->isMediaFileCompatible(Lcom/fusepowered/vast/model/VASTMediaFile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    .end local v1    # "media":Lcom/fusepowered/vast/model/VASTMediaFile;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMediaFileCompatible(Lcom/fusepowered/vast/model/VASTMediaFile;)Z
    .locals 2
    .param p1, "media"    # Lcom/fusepowered/vast/model/VASTMediaFile;

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/fusepowered/vast/model/VASTMediaFile;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private prefilterMediaFiles(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/vast/model/VASTMediaFile;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "mediaFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/vast/model/VASTMediaFile;>;"
    const/16 v9, 0x1388

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fusepowered/vast/model/VASTMediaFile;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/vast/model/VASTMediaFile;

    .line 80
    .local v2, "mediaFile":Lcom/fusepowered/vast/model/VASTMediaFile;
    invoke-virtual {v2}, Lcom/fusepowered/vast/model/VASTMediaFile;->getType()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v2}, Lcom/fusepowered/vast/model/VASTMediaFile;->getHeight()Ljava/math/BigInteger;

    move-result-object v0

    .line 90
    .local v0, "height":Ljava/math/BigInteger;
    if-nez v0, :cond_2

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 96
    .local v5, "videoHeight":I
    if-lez v5, :cond_3

    if-lt v5, v9, :cond_4

    .line 98
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {v2}, Lcom/fusepowered/vast/model/VASTMediaFile;->getWidth()Ljava/math/BigInteger;

    move-result-object v7

    .line 105
    .local v7, "width":Ljava/math/BigInteger;
    if-nez v7, :cond_5

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 110
    :cond_5
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 111
    .local v6, "videoWidth":I
    if-lez v6, :cond_6

    if-lt v6, v9, :cond_7

    .line 113
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 119
    :cond_7
    invoke-virtual {v2}, Lcom/fusepowered/vast/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 127
    .end local v0    # "height":Ljava/math/BigInteger;
    .end local v2    # "mediaFile":Lcom/fusepowered/vast/model/VASTMediaFile;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "videoHeight":I
    .end local v6    # "videoWidth":I
    .end local v7    # "width":Ljava/math/BigInteger;
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    return v8
.end method

.method private setDeviceWidthHeight()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 135
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->deviceWidth:I

    .line 136
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->deviceHeight:I

    .line 137
    iget v1, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->deviceWidth:I

    iget v2, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->deviceHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->deviceArea:I

    .line 138
    return-void
.end method

.method private setDeviceWidthHeight(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->deviceWidth:I

    .line 142
    iput p2, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->deviceHeight:I

    .line 143
    iget v0, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->deviceWidth:I

    iget v1, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->deviceHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker;->deviceArea:I

    .line 144
    return-void
.end method


# virtual methods
.method public pickVideo(Ljava/util/List;)Lcom/fusepowered/vast/model/VASTMediaFile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/vast/model/VASTMediaFile;",
            ">;)",
            "Lcom/fusepowered/vast/model/VASTMediaFile;"
        }
    .end annotation

    .prologue
    .local p1, "mediaFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/vast/model/VASTMediaFile;>;"
    const/4 v0, 0x0

    .line 52
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/fusepowered/vast/util/DefaultMediaPicker;->prefilterMediaFiles(Ljava/util/List;)I

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    new-instance v1, Lcom/fusepowered/vast/util/DefaultMediaPicker$AreaComparator;

    invoke-direct {v1, p0, v0}, Lcom/fusepowered/vast/util/DefaultMediaPicker$AreaComparator;-><init>(Lcom/fusepowered/vast/util/DefaultMediaPicker;Lcom/fusepowered/vast/util/DefaultMediaPicker$1;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/fusepowered/vast/util/DefaultMediaPicker;->getBestMatch(Ljava/util/List;)Lcom/fusepowered/vast/model/VASTMediaFile;

    move-result-object v0

    .line 57
    .local v0, "mediaFile":Lcom/fusepowered/vast/model/VASTMediaFile;
    goto :goto_0
.end method
