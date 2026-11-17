.class public final enum Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;
.super Ljava/lang/Enum;
.source "ShaderProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ATTRIBUTES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

.field public static final enum ATTRIB_COLOR:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

.field public static final enum ATTRIB_POSITION:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

.field public static final enum ATTRIB_TEXCOORD:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

.field public static final enum NUM_ATTRIBUTES:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    const-string v1, "ATTRIB_POSITION"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_POSITION:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    .line 38
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    const-string v1, "ATTRIB_COLOR"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_COLOR:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    .line 39
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    const-string v1, "ATTRIB_TEXCOORD"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_TEXCOORD:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    .line 40
    new-instance v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    const-string v1, "NUM_ATTRIBUTES"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->NUM_ATTRIBUTES:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_POSITION:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_COLOR:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->ATTRIB_TEXCOORD:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->NUM_ATTRIBUTES:Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->$VALUES:[Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->$VALUES:[Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    invoke-virtual {v0}, [Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/liboffers/gui/renderer/opengl/ShaderProgram$ATTRIBUTES;

    return-object v0
.end method
