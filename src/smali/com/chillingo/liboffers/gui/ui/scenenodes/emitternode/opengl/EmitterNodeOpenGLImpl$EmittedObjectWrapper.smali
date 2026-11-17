.class Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
.super Ljava/lang/Object;
.source "EmitterNodeOpenGLImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmittedObjectWrapper"
.end annotation


# instance fields
.field private alphaMultiplier:F

.field private direction:Landroid/graphics/PointF;

.field private duration:F

.field private object:Lcom/chillingo/liboffers/gui/renderer/Sprite;

.field private position:Landroid/graphics/PointF;

.field private rotateZ:F

.field private rotation:Landroid/graphics/PointF;

.field private scale:Landroid/graphics/PointF;

.field private scaleFactor:F

.field private speed:F

.field private targetAlphaMultiplier:F

.field final synthetic this$0:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;

.field private time:F


# direct methods
.method public constructor <init>(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->this$0:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->position:Landroid/graphics/PointF;

    .line 87
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->rotation:Landroid/graphics/PointF;

    .line 88
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->scale:Landroid/graphics/PointF;

    .line 89
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->direction:Landroid/graphics/PointF;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Lcom/chillingo/liboffers/gui/renderer/Sprite;
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->object:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    return-object v0
.end method

.method static synthetic access$002(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Lcom/chillingo/liboffers/gui/renderer/Sprite;)Lcom/chillingo/liboffers/gui/renderer/Sprite;
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .param p1, "x1"    # Lcom/chillingo/liboffers/gui/renderer/Sprite;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->object:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    return-object p1
.end method

.method static synthetic access$100(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .prologue
    .line 61
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->time:F

    return v0
.end method

.method static synthetic access$1000(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->position:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->position:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->rotation:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->rotation:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$118(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;D)F
    .locals 3
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .param p1, "x1"    # D

    .prologue
    .line 61
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->time:F

    float-to-double v0, v0

    add-double/2addr v0, p1

    double-to-float v0, v0

    iput v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->time:F

    return v0
.end method

.method static synthetic access$200(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .prologue
    .line 61
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->duration:F

    return v0
.end method

.method static synthetic access$202(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->duration:F

    return p1
.end method

.method static synthetic access$300(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->direction:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$302(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->direction:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$400(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .prologue
    .line 61
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->speed:F

    return v0
.end method

.method static synthetic access$402(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->speed:F

    return p1
.end method

.method static synthetic access$500(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->scale:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$502(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->scale:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$600(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .prologue
    .line 61
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->rotateZ:F

    return v0
.end method

.method static synthetic access$602(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->rotateZ:F

    return p1
.end method

.method static synthetic access$700(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .prologue
    .line 61
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->scaleFactor:F

    return v0
.end method

.method static synthetic access$702(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->scaleFactor:F

    return p1
.end method

.method static synthetic access$800(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .prologue
    .line 61
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->alphaMultiplier:F

    return v0
.end method

.method static synthetic access$802(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->alphaMultiplier:F

    return p1
.end method

.method static synthetic access$900(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;)F
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;

    .prologue
    .line 61
    iget v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->targetAlphaMultiplier:F

    return v0
.end method

.method static synthetic access$902(Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->targetAlphaMultiplier:F

    return p1
.end method


# virtual methods
.method public direction()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->direction:Landroid/graphics/PointF;

    return-object v0
.end method

.method public recreateAssets()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->object:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->object:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->recreate()V

    .line 148
    :cond_0
    return-void
.end method

.method public setDirection(Landroid/graphics/PointF;)V
    .locals 7
    .param p1, "direction"    # Landroid/graphics/PointF;

    .prologue
    .line 99
    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/PointF;->y:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 101
    .local v1, "lengthSqr":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 103
    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 105
    .local v0, "length":F
    iget v4, p1, Landroid/graphics/PointF;->x:F

    div-float v2, v4, v0

    .line 106
    .local v2, "normalisedDirectionX":F
    iget v4, p1, Landroid/graphics/PointF;->y:F

    div-float v3, v4, v0

    .line 108
    .local v3, "normalisedDirectionY":F
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->direction:Landroid/graphics/PointF;

    .line 110
    .end local v0    # "length":F
    .end local v2    # "normalisedDirectionX":F
    .end local v3    # "normalisedDirectionY":F
    :cond_0
    return-void
.end method

.method updateMatrix()V
    .locals 8

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 116
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 118
    .local v0, "objMat":[F
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 120
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->position:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->position:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2, v4, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 122
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->scale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->scale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 126
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->rotation:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v2, v6

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 131
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/opengl/EmitterNodeOpenGLImpl$EmittedObjectWrapper;->object:Lcom/chillingo/liboffers/gui/renderer/Sprite;

    invoke-interface {v1, v0}, Lcom/chillingo/liboffers/gui/renderer/Sprite;->setMatrix([F)V

    .line 143
    return-void
.end method
