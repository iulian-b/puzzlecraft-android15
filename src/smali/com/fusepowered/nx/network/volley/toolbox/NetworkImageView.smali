.class public Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"


# instance fields
.field private mDefaultImageId:I

.field private mErrorImageId:I

.field private mImageContainer:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

.field private mImageLoader:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    .prologue
    .line 33
    iget v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return v0
.end method

.method static synthetic access$100(Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;

    .prologue
    .line 33
    iget v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return v0
.end method

.method private loadImageIfNecessary(Z)V
    .locals 7
    .param p1, "isInLayoutPass"    # Z

    .prologue
    const/4 v5, -0x2

    .line 105
    invoke-virtual {p0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v3

    .line 106
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v0

    .line 108
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v5, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    .line 113
    .local v1, "isFullyWrapContent":Z
    :goto_0
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 177
    :cond_0
    :goto_1
    return-void

    .line 110
    .end local v1    # "isFullyWrapContent":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 119
    .restart local v1    # "isFullyWrapContent":Z
    :cond_2
    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 120
    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v4, :cond_3

    .line 121
    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 122
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    .line 124
    :cond_3
    invoke-direct {p0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    goto :goto_1

    .line 129
    :cond_4
    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 130
    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 136
    invoke-direct {p0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    .line 142
    :cond_5
    iget-object v4, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;

    iget-object v5, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    new-instance v6, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView$1;

    invoke-direct {v6, p0, p1}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView$1;-><init>(Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;Z)V

    invoke-virtual {v4, v5, v6}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageListener;)Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v2

    .line 176
    .local v2, "newContainer":Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;
    iput-object v2, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_1
.end method

.method private setDefaultImageOrNull()V
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    if-eqz v0, :cond_0

    .line 181
    iget v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->setImageResource(I)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 210
    invoke-virtual {p0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->invalidate()V

    .line 211
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 200
    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    iput-object v1, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader$ImageContainer;

    .line 204
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 205
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 190
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    .line 192
    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 0
    .param p1, "defaultImage"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    .line 90
    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0
    .param p1, "errorImage"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mErrorImageId:I

    .line 98
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageLoader"    # Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/fusepowered/nx/network/volley/toolbox/ImageLoader;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fusepowered/nx/network/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    .line 82
    return-void
.end method
