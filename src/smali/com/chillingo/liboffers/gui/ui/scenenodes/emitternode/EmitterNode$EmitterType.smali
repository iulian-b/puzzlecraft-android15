.class public final enum Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;
.super Ljava/lang/Enum;
.source "EmitterNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmitterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

.field public static final enum ET_AREA:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

.field public static final enum ET_PERIMETER:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

.field public static final enum ET_POINT:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    const-string v1, "ET_POINT"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;->ET_POINT:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    .line 14
    new-instance v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    const-string v1, "ET_AREA"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;->ET_AREA:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    .line 15
    new-instance v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    const-string v1, "ET_PERIMETER"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;->ET_PERIMETER:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    sget-object v1, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;->ET_POINT:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;->ET_AREA:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;->ET_PERIMETER:Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;->$VALUES:[Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;->$VALUES:[Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    invoke-virtual {v0}, [Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/liboffers/gui/ui/scenenodes/emitternode/EmitterNode$EmitterType;

    return-object v0
.end method
