.class public final enum Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;
.super Ljava/lang/Enum;
.source "UnityAdsMuteVideoButton.java"


# static fields
.field public static final enum Muted:Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

.field public static final enum UnMuted:Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

.field private static final synthetic a:[Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    const-string v1, "UnMuted"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->UnMuted:Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    new-instance v0, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    const-string v1, "Muted"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->Muted:Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    sget-object v1, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->UnMuted:Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->Muted:Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->a:[Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->a:[Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {v0}, [Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/u1/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    return-object v0
.end method
