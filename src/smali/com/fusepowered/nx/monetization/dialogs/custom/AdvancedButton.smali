.class public Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;
.super Landroid/widget/Button;
.source "AdvancedButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;,
        Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;
    }
.end annotation


# static fields
.field private static final MIN_HEIGHT:I = 0x3c


# instance fields
.field private final buttonFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private final buttonTouchListener:Landroid/view/View$OnTouchListener;

.field private depressedBackground:Landroid/graphics/drawable/Drawable;

.field private final depressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

.field private depressedText:Ljava/lang/String;

.field private depressedTextColor:I

.field private depressedTextSize:F

.field private focusedBackground:Landroid/graphics/drawable/Drawable;

.field private final focusedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

.field private focusedText:Ljava/lang/String;

.field private focusedTextColor:I

.field private focusedTextSize:F

.field private pressedBackground:Landroid/graphics/drawable/Drawable;

.field private final pressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

.field private pressedText:Ljava/lang/String;

.field private pressedTextColor:I

.field private pressedTextSize:F

.field private state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

.field private userFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private userTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, -0x1000000

    const/high16 v0, 0x41600000    # 14.0f

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 41
    iput v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedTextSize:F

    .line 42
    iput v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedTextSize:F

    .line 43
    iput v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedTextSize:F

    .line 44
    iput v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedTextColor:I

    .line 45
    iput v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedTextColor:I

    .line 46
    iput v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedTextColor:I

    .line 47
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedText:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedText:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedText:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    .line 51
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 52
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 53
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 62
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 63
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->userFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 65
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    .line 87
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$2;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 152
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->init()V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, -0x1000000

    const/high16 v0, 0x41600000    # 14.0f

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedTextSize:F

    .line 42
    iput v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedTextSize:F

    .line 43
    iput v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedTextSize:F

    .line 44
    iput v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedTextColor:I

    .line 45
    iput v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedTextColor:I

    .line 46
    iput v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedTextColor:I

    .line 47
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedText:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedText:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedText:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    .line 51
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 52
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 53
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 62
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 63
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->userFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 65
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    .line 87
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$2;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 147
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->init()V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v2, -0x1000000

    const/high16 v0, 0x41600000    # 14.0f

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedTextSize:F

    .line 42
    iput v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedTextSize:F

    .line 43
    iput v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedTextSize:F

    .line 44
    iput v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedTextColor:I

    .line 45
    iput v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedTextColor:I

    .line 46
    iput v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedTextColor:I

    .line 47
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedText:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedText:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedText:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    .line 51
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 52
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 53
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    .line 62
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 63
    iput-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->userFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 65
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$1;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    .line 87
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$2;-><init>(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 142
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->init()V

    .line 143
    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonPressed()V

    return-void
.end method

.method static synthetic access$200(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonDepressed()V

    return-void
.end method

.method static synthetic access$300(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->userFocusListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method private buttonDepressed()V
    .locals 4

    .prologue
    .line 115
    sget-object v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    .line 116
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonFocused()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedTextColor:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setTextColor(I)V

    .line 122
    iget v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedTextSize:F

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setTextSize(F)V

    .line 123
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v0, v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->radius:F

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v1, v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dx:F

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v2, v2, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dy:F

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v3, v3, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->color:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setShadowLayer(FFFI)V

    .line 124
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private buttonFocused()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedTextColor:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setTextColor(I)V

    .line 133
    iget v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedTextSize:F

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setTextSize(F)V

    .line 134
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v0, v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->radius:F

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v1, v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dx:F

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v2, v2, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dy:F

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v3, v3, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->color:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setShadowLayer(FFFI)V

    .line 135
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    return-void
.end method

.method private buttonPressed()V
    .locals 4

    .prologue
    .line 103
    sget-object v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    .line 104
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedTextColor:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setTextColor(I)V

    .line 106
    iget v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedTextSize:F

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setTextSize(F)V

    .line 107
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v0, v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->radius:F

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v1, v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dx:F

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v2, v2, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->dy:F

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    iget v3, v3, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->color:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setShadowLayer(FFFI)V

    .line 109
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method init()V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_NORMAL:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedBackground:Landroid/graphics/drawable/Drawable;

    .line 157
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_PRESSED:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 158
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_NORMAL:Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedBackground:Landroid/graphics/drawable/Drawable;

    .line 159
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 161
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonDepressed()V

    .line 162
    invoke-static {}, Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize;->getDeviceScreenSize()Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->SMALL:Lcom/fusepowered/nx/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setMinHeight(I)V

    .line 163
    return-void

    .line 162
    :cond_0
    const/16 v0, 0x3c

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 183
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedBackground:Landroid/graphics/drawable/Drawable;

    .line 184
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedBackground:Landroid/graphics/drawable/Drawable;

    .line 185
    return-void
.end method

.method public setBackgroundDepressedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedBackground:Landroid/graphics/drawable/Drawable;

    .line 198
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedBackground:Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :cond_0
    return-void
.end method

.method public setBackgroundPressedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 190
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 191
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_0
    return-void
.end method

.method public setDepressedAttributes(Ljava/lang/String;IFLandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textColor"    # I
    .param p3, "textSize"    # F
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedText:Ljava/lang/String;

    .line 224
    iput p2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedTextColor:I

    .line 225
    iput p3, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedTextSize:F

    .line 226
    iput-object p4, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedBackground:Landroid/graphics/drawable/Drawable;

    .line 227
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonDepressed()V

    .line 230
    :cond_0
    return-void
.end method

.method public setDepressedShadowLayer(FFFI)V
    .locals 2
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->setAttributes(FFFI)V

    .line 297
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 298
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setShadowLayer(FFFI)V

    .line 300
    :cond_0
    return-void
.end method

.method public setDepressedText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedText:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 236
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    return-void
.end method

.method public setDepressedTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedTextColor:I

    .line 243
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setTextColor(I)V

    .line 246
    :cond_0
    return-void
.end method

.method public setDepressedTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 250
    iput p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->depressedTextSize:F

    .line 251
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setTextSize(F)V

    .line 254
    :cond_0
    return-void
.end method

.method public setFocusedAttributes(Ljava/lang/String;IFLandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textColor"    # I
    .param p3, "textSize"    # F
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedText:Ljava/lang/String;

    .line 319
    iput p2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedTextColor:I

    .line 320
    iput p3, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedTextSize:F

    .line 321
    iput-object p4, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedBackground:Landroid/graphics/drawable/Drawable;

    .line 322
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonFocused()V

    .line 325
    :cond_0
    return-void
.end method

.method public setFocusedShadowLayer(FFFI)V
    .locals 2
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->setAttributes(FFFI)V

    .line 308
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 309
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setShadowLayer(FFFI)V

    .line 311
    :cond_0
    return-void
.end method

.method public setFocusedText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedText:Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :cond_0
    return-void
.end method

.method public setFocusedTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedTextColor:I

    .line 338
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setTextColor(I)V

    .line 341
    :cond_0
    return-void
.end method

.method public setFocusedTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 345
    iput p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->focusedTextSize:F

    .line 346
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setTextSize(F)V

    .line 349
    :cond_0
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->userFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 175
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 169
    return-void
.end method

.method public setPressedAttributes(Ljava/lang/String;IFLandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textColor"    # I
    .param p3, "textSize"    # F
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedText:Ljava/lang/String;

    .line 210
    iput p2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedTextColor:I

    .line 211
    iput p3, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedTextSize:F

    .line 212
    iput-object p4, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 213
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->buttonPressed()V

    .line 216
    :cond_0
    return-void
.end method

.method public setPressedShadowLayer(FFFI)V
    .locals 2
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedShadow:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$ShadowLayerAttributes;->setAttributes(FFFI)V

    .line 286
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 287
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setShadowLayer(FFFI)V

    .line 289
    :cond_0
    return-void
.end method

.method public setPressedText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedText:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 268
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_0
    return-void
.end method

.method public setPressedTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedTextColor:I

    .line 275
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 276
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setTextColor(I)V

    .line 278
    :cond_0
    return-void
.end method

.method public setPressedTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 258
    iput p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->pressedTextSize:F

    .line 259
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->state:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    sget-object v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;->PRESSED:Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 260
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AdvancedButton;->setTextSize(F)V

    .line 262
    :cond_0
    return-void
.end method
