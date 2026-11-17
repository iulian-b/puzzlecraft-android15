.class public Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


# static fields
.field private static final ENABLE_TEXTUREMANAGER_LOG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OffersTextureManager"

.field private static ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;


# instance fields
.field private textures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->textures:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method private doRemoveAllTextures()V
    .locals 3

    .prologue
    .line 98
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->textures:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;

    .line 100
    .local v1, "texture":Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;->shutdown()V

    goto :goto_0

    .line 104
    .end local v1    # "texture":Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
    :cond_0
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->textures:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 105
    return-void
.end method

.method public static getInstance()Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    invoke-direct {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;-><init>()V

    sput-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    return-object v0
.end method

.method public static releaseInstance()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->shutdown()V

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public addTextureForKey(Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;Ljava/lang/String;)V
    .locals 2
    .param p1, "texture"    # Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add invalid texture to texture manager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add texture with invalid key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->textures:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public parseProperties(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public removeAllTextures()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->doRemoveAllTextures()V

    .line 79
    return-void
.end method

.method public removeTextureForKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 70
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add texture with invalid key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->textures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 87
    const-string v0, "OffersTextureManager"

    const-string v1, "ThemeManager shutdown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 89
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->removeAllTextures()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->textures:Ljava/util/HashMap;

    .line 92
    return-void
.end method

.method public textureForKey(Ljava/lang/String;)Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to retrieve texture from texture manager with invalid key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/TextureManager;->textures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/Texture;

    return-object v0
.end method
