.class public Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLExtensions;
.super Ljava/lang/Object;
.source "OpenGLExtensions.java"


# static fields
.field private static _extensionsCached:Z

.field private static _glExtDebugMarkerAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLExtensions;->_glExtDebugMarkerAvailable:Z

    .line 20
    sput-boolean v0, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLExtensions;->_extensionsCached:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheOpenGLESExtensions()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 24
    sget-boolean v6, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLExtensions;->_extensionsCached:Z

    if-nez v6, :cond_2

    .line 25
    const/16 v6, 0x1f03

    invoke-static {v6}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, "extensions":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 28
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "extensionNames":[Ljava/lang/String;
    const-string v6, "Offers"

    const-string v7, "Caching OpenGL extensions"

    invoke-static {v6, v7, v9}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 33
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 34
    .local v1, "extension":Ljava/lang/String;
    const-string v6, "Offers"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OpenGL extension: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 37
    const-string v6, "GL_EXT_debug_marker"

    if-ne v1, v6, :cond_0

    .line 38
    sput-boolean v10, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLExtensions;->_glExtDebugMarkerAvailable:Z

    .line 33
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "extension":Ljava/lang/String;
    :cond_1
    sput-boolean v10, Lcom/chillingo/liboffers/gui/renderer/opengl/OpenGLExtensions;->_extensionsCached:Z

    .line 44
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "extensionNames":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    return-void
.end method

.method public static popGroupMarker()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public static pushGroupMarker(Ljava/lang/String;)V
    .locals 0
    .param p0, "marker"    # Ljava/lang/String;

    .prologue
    .line 48
    return-void
.end method
