.class public Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;
.super Ljava/lang/Object;
.source "ShaderProgramManager.java"


# static fields
.field private static final ENABLE_SHADERPROGRAMMANAGER_LOG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OffersShaderProgramManager"

.field private static ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;


# instance fields
.field private programs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;

    invoke-direct {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;-><init>()V

    sput-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->programs:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method private doRemoveAllPrograms()V
    .locals 3

    .prologue
    .line 87
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->programs:Ljava/util/HashMap;

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

    check-cast v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;

    .line 89
    .local v1, "program":Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;
    invoke-virtual {v1}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;->shutdown()V

    goto :goto_0

    .line 92
    .end local v1    # "program":Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;
    :cond_0
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->programs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 93
    return-void
.end method

.method public static getInstance()Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;

    invoke-direct {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;-><init>()V

    sput-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;

    return-object v0
.end method

.method public static releaseInstance()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->shutdown()V

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->ourInstance:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public addProgramForKey(Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;Ljava/lang/String;)V
    .locals 2
    .param p1, "program"    # Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add invalid program to shader program manager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add program with invalid key from shader program manager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->programs:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public programForKey(Ljava/lang/String;)Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to retrieve program with invalid key from shader program manager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->programs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;

    return-object v0
.end method

.method public removeAllPrograms()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->doRemoveAllPrograms()V

    .line 74
    return-void
.end method

.method shutdown()V
    .locals 3

    .prologue
    .line 78
    const-string v0, "OffersShaderProgramManager"

    const-string v1, "ShaderProgramManager shutdown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 80
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->removeAllPrograms()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgramManager;->programs:Ljava/util/HashMap;

    .line 83
    return-void
.end method
