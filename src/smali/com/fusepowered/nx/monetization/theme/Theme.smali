.class public Lcom/fusepowered/nx/monetization/theme/Theme;
.super Ljava/lang/Object;
.source "Theme.java"


# instance fields
.field private final animations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final colors:Landroid/util/SparseIntArray;

.field private final drawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->initialized:Z

    .line 69
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->colors:Landroid/util/SparseIntArray;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->drawables:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->animations:Landroid/util/SparseArray;

    .line 72
    return-void
.end method

.method private isThemeElementMraidType(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Z
    .locals 1
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .prologue
    .line 201
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_BOTTOM_LEFT:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-virtual {p1, v0}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_BOTTOM_RIGHT:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .line 202
    invoke-virtual {p1, v0}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_CENTER:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .line 203
    invoke-virtual {p1, v0}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_DEFAULT:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .line 204
    invoke-virtual {p1, v0}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_TOP_LEFT:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .line 205
    invoke-virtual {p1, v0}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_TOP_RIGHT:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .line 206
    invoke-virtual {p1, v0}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_TOP_CENTER:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .line 207
    invoke-virtual {p1, v0}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_BOTTOM_CENTER:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .line 208
    invoke-virtual {p1, v0}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAnimation(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->animations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getColor(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;
    .locals 2
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->colors:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .prologue
    .line 127
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->drawables:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 129
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 130
    invoke-static {}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getInstance()Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getImageCache()Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 133
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 134
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 138
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/fusepowered/nx/monetization/theme/Theme;->setDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;Landroid/graphics/drawable/Drawable;)V

    .line 141
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    return-object v2

    .line 136
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public declared-synchronized initialize()V
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->initialized:Z

    return v0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 148
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->initialized:Z

    .line 149
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->colors:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 153
    .local v1, "key":I
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "key":I
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 148
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/theme/Theme;->release()V

    .line 189
    return-void
.end method

.method setAnimation(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->animations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    return-void
.end method

.method setColor(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;I)V
    .locals 2
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;
    .param p2, "color"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->colors:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    return-void
.end method

.method setDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 111
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/theme/Theme;->isThemeElementMraidType(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getInstance()Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley;->getImageCache()Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/fusepowered/nx/volleytoolbox/NativeXVolley$DiskBitmapCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/theme/Theme;->drawables:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    return-void
.end method
