.class public Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;
.super Landroid/widget/RelativeLayout;
.source "LinearProgressBar.java"

# interfaces
.implements Lcom/fusepowered/nx/monetization/interfaces/ICustomProgressBar;


# static fields
.field private static final HEIGHT_BAR:I = 0xa

.field private static final ID_BUFFER_IMAGE:I = 0x3ea

.field private static final ID_EMPTY_IMAGE:I = 0x3eb

.field private static final ID_PROGRESS_IMAGE:I = 0x3e9

.field private static final ID_PROGRESS_LAYOUT:I = 0x3e8

.field private static final MARGIN_BAR_BOTTOM:I = 0x0

.field private static final MARGIN_BAR_LEFT:I = 0x5

.field private static final MARGIN_BAR_RIGHT:I = 0x5

.field private static final MARGIN_BAR_TOP:I


# instance fields
.field private final backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private bufferDrawable:Landroid/graphics/drawable/Drawable;

.field private bufferImage:Landroid/widget/ImageView;

.field private emptyDrawable:Landroid/graphics/drawable/Drawable;

.field private emptyImage:Landroid/widget/ImageView;

.field private positionBuffer:I

.field private positionCurrent:I

.field private positionMax:I

.field private progressDrawable:Landroid/graphics/drawable/Drawable;

.field private progressImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v0, 0x64

    iput v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionMax:I

    .line 37
    iput v2, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionCurrent:I

    .line 38
    iput v2, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionBuffer:I

    .line 40
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressImage:Landroid/widget/ImageView;

    .line 46
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferImage:Landroid/widget/ImageView;

    .line 47
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyImage:Landroid/widget/ImageView;

    .line 62
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->setupLayout()V

    .line 63
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->createControls(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private createBufferImage(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0xa

    .line 91
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferImage:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v2}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->setBarParams(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 95
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 96
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferImage:Landroid/widget/ImageView;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 97
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->addView(Landroid/view/View;)V

    .line 98
    return-void
.end method

.method private createControls(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->loadDrawables(Landroid/content/Context;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->createEmptyImage(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->createBufferImage(Landroid/content/Context;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->createProgressImage(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method private createEmptyImage(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0xa

    .line 102
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyImage:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v2}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->setBarParams(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 106
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 107
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyImage:Landroid/widget/ImageView;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 108
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->addView(Landroid/view/View;)V

    .line 109
    return-void
.end method

.method private createProgressImage(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0xa

    .line 80
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressImage:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v2}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->setBarParams(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 84
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 85
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressImage:Landroid/widget/ImageView;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 86
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->addView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method private getNewWidth(II)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "width"    # I

    .prologue
    .line 252
    int-to-float v1, p1

    iget v2, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionMax:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 253
    .local v0, "fill":F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private loadDrawables(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_BACKGROUND_WATCHED:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_BACKGROUND_BUFFERED:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_BACKGROUND_EMPTY:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    return-void
.end method

.method private setBarParams(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 242
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 243
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 244
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 245
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 246
    return-object v0
.end method

.method private setupLayout()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->setId(I)V

    .line 68
    return-void
.end method

.method private updateProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 231
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    add-int/lit8 v0, v1, -0x5

    .line 233
    .local v0, "maxWidth":I
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressImage:Landroid/widget/ImageView;

    iget v2, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionCurrent:I

    invoke-direct {p0, v2, v0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->getNewWidth(II)I

    move-result v2

    invoke-direct {p0, v2, v3}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->setBarParams(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferImage:Landroid/widget/ImageView;

    iget v2, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionBuffer:I

    invoke-direct {p0, v2, v0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->getNewWidth(II)I

    move-result v2

    invoke-direct {p0, v2, v3}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->setBarParams(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    .end local v0    # "maxWidth":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getBufferedPosition()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionBuffer:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionCurrent:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionMax:I

    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 260
    if-nez p1, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->updateProgressBar()V

    .line 263
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->removeAllViews()V

    .line 124
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .end local p1    # "background":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->invalidate()V

    .line 179
    return-void

    .line 177
    .restart local p1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setBufferDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "buffer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .end local p1    # "buffer":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 186
    return-void

    .line 184
    .restart local p1    # "buffer":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->bufferDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setBufferPosition(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 155
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionMax:I

    if-le p1, v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iput p1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionBuffer:I

    .line 160
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->updateProgressBar()V

    goto :goto_0
.end method

.method public setBufferProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 166
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionMax:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionBuffer:I

    .line 171
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->updateProgressBar()V

    goto :goto_0
.end method

.method public setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "empty"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .end local p1    # "empty":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 201
    return-void

    .line 199
    .restart local p1    # "empty":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 222
    iput p1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionMax:I

    .line 223
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 134
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionMax:I

    if-le p1, v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iput p1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionCurrent:I

    .line 139
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->updateProgressBar()V

    goto :goto_0
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 145
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionMax:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->positionCurrent:I

    .line 149
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->updateProgressBar()V

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "progress"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .end local p1    # "progress":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 194
    return-void

    .line 191
    .restart local p1    # "progress":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/LinearProgressBar;->progressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setTickDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "tick"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    return-void
.end method
