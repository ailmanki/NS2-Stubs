---@meta Predict

---@return boolean
function Shared.GetIsRunningPrediction() end

---@class Predict
Predict = {}
---@return boolean
function Predict.GetIsPredictor() end

---@param name string
---@param callback fun(data: table)
function Predict.HookNetworkMessage(name, callback) end

---@return Entity
function Predict.GetLocalPlayer() end


--@enum InputKey
--InputKey = {
--    None = "None",
--    Escape = "Escape",
--    Num1 = "Num1",
--    Num2 = "Num2",
--    Num3 = "Num3",
--    Num4 = "Num4",
--    Num5 = "Num5",
--    Num6 = "Num6",
--    Num7 = "Num7",
--    Num8 = "Num8",
--    Num9 = "Num9",
--    Num0 = "Num0",
--    Minus = "Minus",
--    Equals = "Equals",
--    Back = "Back",
--    Tab = "Tab",
--    Q = "Q",
--    W = "W",
--    E = "E",
--    R = "R",
--    T = "T",
--    Y = "Y",
--    U = "U",
--    I = "I",
--    O = "O",
--    P = "P",
--    LeftBracket = "LeftBracket",
--    RightBracket = "RightBracket",
--    Return = "Return",
--    LeftControl = "LeftControl",
--    A = "A",
--    S = "S",
--    D = "D",
--    F = "F",
--    G = "G",
--    H = "H",
--    J = "J",
--    K = "K",
--    L = "L",
--    Semicolon = "Semicolon",
--    Apostrophe = "Apostrophe",
--    Grave = "Grave",
--    LeftShift = "LeftShift",
--    Backslash = "Backslash",
--    Z = "Z",
--    X = "X",
--    C = "C",
--    V = "V",
--    B = "B",
--    N = "N",
--    M = "M",
--    Comma = "Comma",
--    Period = "Period",
--    Slash = "Slash",
--    RightShift = "RightShift",
--    LeftAlt = "LeftAlt",
--    Space = "Space",
--    Capital = "Capital",
--    F1 = "F1",
--    F2 = "F2",
--    F3 = "F3",
--    F4 = "F4",
--    F5 = "F5",
--    F6 = "F6",
--    F7 = "F7",
--    F8 = "F8",
--    F9 = "F9",
--    F10 = "F10",
--    NumLock = "NumLock",
--    Scroll = "Scroll",
--    NumPad7 = "NumPad7",
--    NumPad8 = "NumPad8",
--    NumPad9 = "NumPad9",
--    NumPadSubtract = "NumPadSubtract",
--    NumPad4 = "NumPad4",
--    NumPad5 = "NumPad5",
--    NumPad6 = "NumPad6",
--    NumPadAdd = "NumPadAdd",
--    NumPad1 = "NumPad1",
--    NumPad2 = "NumPad2",
--    NumPad3 = "NumPad3",
--    NumPad0 = "NumPad0",
--    Decimal = "Decimal",
--    F11 = "F11",
--    F12 = "F12",
--    F13 = "F13",
--    F14 = "F14",
--    F15 = "F15",
--    NumPadEquals = "NumPadEquals",
--    NumPadEnter = "NumPadEnter",
--    NumPadPeriod = "NumPadPeriod",
--    NumPadDivide = "NumPadDivide",
--    NumPadMultiply = "NumPadMultiply",
--    RightControl = "RightControl",
--    PrintScreen = "PrintScreen",
--    RightAlt = "RightAlt",
--    Pause = "Pause",
--    Break = "Break",
--    Home = "Home",
--    Up = "Up",
--    PageUp = "PageUp",
--    Left = "Left",
--    Right = "Right",
--    End = "End",
--    Down = "Down",
--    PageDown = "PageDown",
--    Insert = "Insert",
--    Delete = "Delete",
--    LeftWindows = "LeftWindows",
--    RightWindows = "RightWindows",
--    AppMenu = "AppMenu",
--    Clear = "Clear",
--    Less = "Less",
--    Help = "Help",
--    MouseX = "MouseX",
--    MouseY = "MouseY",
--    MouseZ = "MouseZ",
--    MouseWheelUp = "MouseWheelUp",
--    MouseWheelDown = "MouseWheelDown",
--    MouseButton0 = "MouseButton0",
--    MouseButton1 = "MouseButton1",
--    MouseButton2 = "MouseButton2",
--    MouseButton3 = "MouseButton3",
--    MouseButton4 = "MouseButton4",
--    MouseButton5 = "MouseButton5",
--    MouseButton6 = "MouseButton6",
--    MouseButton7 = "MouseButton7",
--    JoystickX = "JoystickX",
--    JoystickY = "JoystickY",
--    JoystickZ = "JoystickZ",
--    JoystickRotationX = "JoystickRotationX",
--    JoystickRotationY = "JoystickRotationY",
--    JoystickRotationZ = "JoystickRotationZ",
--    JoystickSlider0 = "JoystickSlider0",
--    JoystickSlider1 = "JoystickSlider1",
--    JoystickButton0 = "JoystickButton0",
--    JoystickButton1 = "JoystickButton1",
--    JoystickButton2 = "JoystickButton2",
--    JoystickButton3 = "JoystickButton3",
--    JoystickButton4 = "JoystickButton4",
--    JoystickButton5 = "JoystickButton5",
--    JoystickButton6 = "JoystickButton6",
--    JoystickButton7 = "JoystickButton7",
--    JoystickButton8 = "JoystickButton8",
--    JoystickButton9 = "JoystickButton9",
--    JoystickButton10 = "JoystickButton10",
--    JoystickPovN = "JoystickPovN",
--    JoystickPovS = "JoystickPovS",
--    JoystickPovE = "JoystickPovE",
--    JoystickPovW = "JoystickPovW",
--    FirstScanCode = "FirstScanCode",
--    LastScanCode = "LastScanCode"
--}