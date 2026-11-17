.class final enum Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;
.super Ljava/lang/Enum;
.source "BubbleNodeStateFloating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PopMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

.field public static final enum EXPAND:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

.field public static final enum TAP:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    const-string v1, "EXPAND"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;->EXPAND:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    .line 42
    new-instance v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    const-string v1, "TAP"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;->TAP:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    sget-object v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;->EXPAND:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;->TAP:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;->$VALUES:[Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;->$VALUES:[Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    invoke-virtual {v0}, [Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$PopMethod;

    return-object v0
.end method
